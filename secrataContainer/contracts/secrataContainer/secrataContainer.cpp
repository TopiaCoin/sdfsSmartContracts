/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include "secrataContainer.hpp"
#include <eosiolib/crypto.h>
#include <stdio.h>
#include <string>
#include <sstream>
#include <iostream>
#include <iomanip>

using namespace eosio;
using namespace secrataContainer;


namespace secrataContainer {

//    uint128_t bytes_to_uint128(char *bytes, unsigned int length);

    using std::string;


    // -------- Containers --------

    void container::create(account_name owner, uint128_t guid, string workspaceName, string workspaceDescription,
                           string key) {
        require_auth(owner);

        eosio_assert(!workspaceExists(guid), "A Workspace with the specified GUID already exists");

        workspace_index workspaces(_self, _self);

        auto new_workspace_itr = workspaces.emplace(_self, [&](auto &workspace) {
            workspace.id = now();
            workspace.guid = guid;
            workspace.name = workspaceName;
            workspace.description = workspaceDescription;
            workspace.owner = owner;
        });

        // Add the workspace creator as a member
        membership_index memberships(_self, owner);

        auto new_membership_itr = memberships.emplace(_self, [&](auto &membership) {
            membership.id = now();
            membership.guid = guid;
            membership.user = owner;
            membership.status = 1;
            membership.key = key;
        });
    }

    void container::update(account_name user, uint128_t guid, string workspaceDescription) {

        eosio_assert(!workspaceExists(guid), "A Workspace with the specified GUID already exists");

        workspace_index workspaces(_self, _self);

    }

    // -------- Membership --------

    void container::invite(account_name inviter, account_name invitee, uint128_t guid, string key) {
        require_auth(inviter);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(inviter, guid),
                     "You are not a member of the workspace");

        // TODO - Make sure inviter has permission to invite

        membership_index memberships(_self, inviter);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byguid)>();
        auto matched_guid_itr = guidIdx.lower_bound(guid);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->guid == guid &&
               matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        if (matched_guid_itr != guidIdx.end() && matched_guid_itr->user == invitee && matched_guid_itr->status == 2) {
            // Update the existing record, if the record we found was for a previously removed member.
            // Pending and Active membership records will not be changed.
            guidIdx.modify(matched_guid_itr, inviter, [&](auto &m) {
                m.status = 0;
                m.key = key;
            });
        } else if (matched_guid_itr == guidIdx.end() ||
                   (matched_guid_itr->user != invitee && matched_guid_itr->guid != guid)) {
            // Add a new member record for the invitee
            auto new_membership_itr = memberships.emplace(inviter, [&](auto &m) {
                m.id = now();
                m.guid = guid;
                m.user = invitee;
                m.status = 0;
                m.key = key;
            });
        } else {
            // The invitee is either already a member of the workspace, or has already been invited.
        }
    }

    void container::accept(account_name invitee, uint128_t guid) {
        require_auth(invitee);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        membership_index memberships(_self, _self);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byguid)>();
        auto matched_guid_itr = guidIdx.lower_bound(guid);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->guid == guid &&
               matched_guid_itr->user != invitee) {
            cout << matched_guid_itr->guid << ((const char *) "? ") << guid << ((const char *)" --- ") << matched_guid_itr->user << ((const char *) "? ") << (int) invitee << ((const char *) "\n");
            matched_guid_itr++;
        }

        eosio_assert(
                matched_guid_itr->guid == guid && matched_guid_itr->user == invitee && matched_guid_itr->status == 0,
                "No Pending Invite found for the specified user and workspace");

        // Update the existing record, to mark the user as active.
        guidIdx.modify(matched_guid_itr, invitee, [&](auto &m) {
            m.status = 1;
        });
    }

    void container::decline(account_name invitee, uint128_t guid) {
        require_auth(invitee);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(invitee, guid),
                     "You are not a member of the workspace");

        membership_index memberships(_self, _self);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byguid)>();
        auto matched_guid_itr = guidIdx.lower_bound(guid);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->guid == guid &&
               matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        eosio_assert(
                matched_guid_itr->guid == guid && matched_guid_itr->user == invitee && matched_guid_itr->status == 0,
                "No Pending Invite found for the specified user and workspace");

        // Update the existing record, to mark the user as active.
        guidIdx.modify(matched_guid_itr, invitee, [&](auto &m) {
            m.status = 2;
            m.key = "";
        });
    }

    void container::remove(account_name remover, account_name member, uint128_t guid) {
        require_auth(remover);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(remover, guid),
                     "You are not a member of the workspace");

        membership_index memberships(_self, _self);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byguid)>();
        auto matched_guid_itr = guidIdx.lower_bound(guid);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->guid == guid &&
               matched_guid_itr->user != member) {
            matched_guid_itr++;
        }

        if(matched_guid_itr != guidIdx.end() && matched_guid_itr->guid == guid && matched_guid_itr->user == member && matched_guid_itr->status != 2) {
            // Update the existing record, to mark the user as active.
            guidIdx.modify(matched_guid_itr, remover, [&](auto &m) {
                m.status = 2;
                m.key = "";
            });
        }
    }

    // -------- Messages --------

    void container::addMessage(account_name author, uint128_t guid, string message) {
        require_auth(author);

         eosio_assert(workspaceExists(guid),
                      "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(author, guid),
                     "You are not a member of the workspace");
        }

    void container::ackMessage(account_name user, uint128_t guid, uint128_t msgID) {

    }

    // -------- Files --------

    void container::addFile(account_name uploader, uint128_t guid, uint128_t parentID, uint128_t fileID,
                            uint128_t versionID, uint128_t ancestorVersionID, string fileMetadata) {

    }

    void container::removeFile(account_name remover, uint128_t guid, uint128_t parentID, uint128_t fileID,
                               uint128_t versionID) {

    }

    void container::ackFile(account_name user, uint128_t guid, uint128_t fileID, uint128_t versionID) {

    }

    // -------- Permissions --------

    void container::setPerm(account_name target, string permName, uint8_t value) {

    }


    // ======== Private Methods ========

    boolean container::workspaceExists(uint128_t guid) {
        workspace_index workspaces(_self, _self);

        // Using the guid index, we find the first entry in the membership table for the lower bounds of the
        // specified guid. If the iterators guid matches the search guid, the workspace exists.  Otherwise,
        // it does not.

        auto guidIdx = workspaces.template get_index<N(byguid)>();
        auto matched_guid_itr = guidIdx.lower_bound(guid);
        return (matched_guid_itr != guidIdx.end()) &&
               (matched_guid_itr->guid == guid);
    }

    boolean container::userIsMemberOfWorkspace(account_name user, uint128_t guid) {
        membership_index memberships(_self, _self);

        // Using the guid index, we find the first entry in the membership table for the lower bounds of the
        // specified guid, then iterate through until we either find an entry for the user, or the iterator's
        // guid does not match the search guid.

        auto guidIdx = memberships.template get_index<N(byguid)>();
        auto matched_guid_itr = guidIdx.lower_bound(guid);

        boolean found = false ;

        while (!found && matched_guid_itr != guidIdx.end() && matched_guid_itr->guid == guid) {
            found = (matched_guid_itr->user == user);
            matched_guid_itr++;
        }

        return found;
    }

    // ======== Utility Functions ========

//    uint128_t bytes_to_uint128(char *bytes, unsigned int length) {
//        return 0;
//    }
}


EOSIO_ABI( secrataContainer::container, (create)(update)(invite)(accept)(decline)(remove) )

