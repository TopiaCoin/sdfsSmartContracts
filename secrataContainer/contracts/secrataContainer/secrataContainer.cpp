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

    using std::string;


    // -------- Containers --------

    void container::create(account_name owner, uint64_t guid, string workspaceName, string workspaceDescription,
                           string key) {
        require_auth(owner);

        eosio_assert(!workspaceExists(guid), "A Workspace with the specified GUID already exists");

        workspace_index workspaces(_self, guid);

        workspaces.emplace(_self, [&](auto &workspace) {
            workspace.id = workspaces.available_primary_key();
            workspace.name = workspaceName;
            workspace.description = workspaceDescription;
            workspace.owner = owner;
        });

        // Add the workspace creator as a member
        membership_index memberships(_self, guid);

        memberships.emplace(_self, [&](auto &membership) {
            membership.id = memberships.available_primary_key();
            membership.user = owner;
            membership.status = 1;
            membership.key = key;
        });
    }

    void container::update(account_name user, uint64_t guid, string workspaceDescription) {

        eosio_assert(workspaceExists(guid), "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        workspace_index workspaces(_self, guid);

        auto workspaceItr = workspaces.begin();

        workspaces.modify(workspaceItr, user, [&](auto& w){
            w.description = workspaceDescription;
        });
    }

    // -------- Membership --------

    void container::invite(account_name inviter, account_name invitee, uint64_t guid, string key) {
        require_auth(inviter);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(inviter, guid, true),
                     "You are not a member of the workspace");

        // TODO - Make sure inviter has permission to invite

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byuser)>();
        auto matched_guid_itr = guidIdx.lower_bound(invitee);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        if (matched_guid_itr != guidIdx.end() && matched_guid_itr->user == invitee && matched_guid_itr->status == 2) {
            // Update the existing record, if the record we found was for a previously removed member.
            // Pending and Active membership records will not be changed.
            guidIdx.modify(matched_guid_itr, inviter, [&](auto &m) {
                m.inviter = inviter;
                m.status = 0;
                m.key = key;
            });
        } else if (matched_guid_itr == guidIdx.end() || matched_guid_itr->user != invitee) {
            // Add a new member record for the invitee
            memberships.emplace(inviter, [&](auto &m) {
                m.id = memberships.available_primary_key();
                m.inviter = inviter;
                m.user = invitee;
                m.status = 0;
                m.key = key;
            });
        } else {
            // The invitee is either already a member of the workspace, or has already been invited.
        }
    }

    void container::accept(account_name invitee, uint64_t guid) {
        require_auth(invitee);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(invitee, guid, false),
                     "You are not a member of the workspace");

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byuser)>();
        auto matched_guid_itr = guidIdx.lower_bound(invitee);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        eosio_assert(matched_guid_itr->user == invitee && matched_guid_itr->status == 0,
                     "No Pending Invite found for the specified user and workspace");

        // Update the existing record, to mark the user as active.
        guidIdx.modify(matched_guid_itr, invitee, [&](auto &m) {
            m.status = 1;
        });
    }

    void container::decline(account_name invitee, uint64_t guid) {
        require_auth(invitee);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(invitee, guid, false),
                     "You are not a member of the workspace");

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byuser)>();
        auto matched_guid_itr = guidIdx.lower_bound(invitee);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        eosio_assert(matched_guid_itr->user == invitee && matched_guid_itr->status == 0,
                     "No Pending Invite found for the specified user and workspace");

        // Erase the entry for the removed user.
        guidIdx.erase(matched_guid_itr);
    }

    void container::remove(account_name remover, account_name member, uint64_t guid) {
        require_auth(remover);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(remover, guid, true),
                     "You are not a member of the workspace");

        // TODO - Make sure remover has permission to remove the member

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<N(byuser)>();
        auto matched_guid_itr = guidIdx.lower_bound(member);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != member) {
            matched_guid_itr++;
        }

        if (matched_guid_itr != guidIdx.end() && matched_guid_itr->user == member) {
            // Erase the entry for the member
            guidIdx.erase(matched_guid_itr);
        }
    }

    // -------- Messages --------

    void container::addmessage(account_name author, uint64_t guid, string message, string mimeType) {
        require_auth(author);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(author, guid, true),
                     "You are not a member of the workspace");

        message_index messages(_self, guid);

        messages.emplace(author, [&](auto &m) {
            m.id = messages.available_primary_key();
            m.msgID = guid + now();
            m.author = author;
            m.text = message;
            m.timestamp = now();
            m.mimeType = mimeType;
        });

        print("Message Created\n");
    }

    void container::ackmessage(account_name user, uint64_t guid, uint128_t msgID) {
        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        // Make sure the specified message exists in the workspace

        message_index messages(_self, guid);
        auto messageIDIdx = messages.template get_index<N(bymsgid)>();
        auto existingMessage = messageIDIdx.lower_bound(msgID);

        eosio_assert(existingMessage != messageIDIdx.end(),
                     "No message with the specified ID exists in this workspace");

        // Find any existing receipt, and only add if it doesn't exist

        messageReceipt_index receipts(_self, guid);

        auto msgIdIdx = receipts.template get_index<N(bymsgid)>();
        auto matchMsgIdx = msgIdIdx.lower_bound(msgID);

        while (matchMsgIdx != msgIdIdx.end() && matchMsgIdx->msgID == msgID &&
               matchMsgIdx->user != user) {
            matchMsgIdx++;
        }

        eosio_assert(matchMsgIdx == msgIdIdx.end(), "This user has already acknowledged this message");

        if (matchMsgIdx == msgIdIdx.end()) {
            receipts.emplace(user, [&](auto &r) {
                r.id = receipts.available_primary_key();
                r.msgID = msgID;
                r.user = user;
                r.timestamp = now();
            });
        } else {
            // A receipt already exists for this user.
            cout << ((const char *) "Message Already Acknowledged\n");
        }
    }

    // -------- Files --------

    void container::addfile(account_name uploader, uint64_t guid, uint128_t parentID, uint128_t fileID,
                            uint128_t versionID, uint128_t ancestorVersionID, string fileMetadata) {
        require_auth(uploader);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(uploader, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(versionID != 0, "Cannot specify a version ID of 0");

        eosio_assert(!fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "A file with this File ID and Version ID already exists in this workspace");

        eosio_assert(parentID == 0 || fileExistsInWorkspace(parentID, guid),
                     "The specified parent file does not exist in this workspace");

        eosio_assert(ancestorVersionID == 0 || fileVersionExistsInWorkspace(fileID, ancestorVersionID, guid),
                     "The specified ancestor version does not exist in this workspace");

        // TODO - Make sure the uploader has permission to add files to this workspace

        file_index files(_self, guid);

        files.emplace(uploader, [&](auto &f) {
            f.id = files.available_primary_key();
            f.fileID = fileID;
            f.parentID = parentID;
            f.versionID = versionID;
            f.parentVersion = ancestorVersionID;
            f.uploader = uploader;
            f.timestamp = now();
            f.status = 1;
            f.metadata = fileMetadata;
        });
    }

    void container::removefile(account_name remover, uint64_t guid, uint128_t fileID,
                               uint128_t versionID) {
        require_auth(remover);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(remover, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        eosio_assert(versionID == 0 || fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "The specified file version does not exist in this workspace");

        // TODO - Make sure the uploader has permission to remove files from this workspace

        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<N(byfileid)>();
        auto matchingFile = fileIDIdx.lower_bound(fileID);

        if (versionID != 0) {
            // A Version ID was specified, so advance to that specific version
            while (matchingFile != fileIDIdx.end() && matchingFile->versionID != versionID) {
                matchingFile++;
            }
        }

        // Run through every entry for this file deleting the appropriate version(s).
        while (matchingFile != fileIDIdx.end() && matchingFile->fileID == fileID) {
            if (versionID == 0 || matchingFile->versionID == versionID) {
                matchingFile = fileIDIdx.erase(matchingFile);
            } else {
                matchingFile++;
            }
        }

        // TODO - Consider cascade deletion of child entries
    }

    void container::ackfile(account_name user, uint64_t guid, uint128_t fileID, uint128_t versionID) {
        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        eosio_assert(fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "The specified file version does not exist in this workspace");

        fileReceipt_index fileReceipts(_self, guid);

        auto receiptIdx = fileReceipts.template get_index<N(byfileid)>();
        auto matchingReceipt = receiptIdx.lower_bound(fileID);

        // Advance to the first entry matching the specified versionID
        while (matchingReceipt != receiptIdx.end() && matchingReceipt->fileID == fileID &&
               matchingReceipt->versionID != versionID && matchingReceipt->user != user) {
            matchingReceipt++;
        }

        eosio_assert(matchingReceipt == receiptIdx.end() || matchingReceipt->fileID != fileID,
                     "This user has already acknowledged this file");

        fileReceipts.emplace(user, [&](auto &r) {
            r.id = fileReceipts.available_primary_key();
            r.fileID = fileID;
            r.versionID = versionID;
            r.user = user;
            r.timestamp = now();
        });
    }

    // -------- Permissions --------

    void container::setperm(account_name target, uint64_t guid, string permName, uint8_t value) {
        print("Setting Permissions\n");
    }


    // ======== Private Methods ========

    boolean container::workspaceExists(uint64_t guid) {
        workspace_index workspaces(_self, guid);

        // Using the guid index, we find the first entry in the membership table for the lower bounds of the
        // specified guid. If the iterators guid matches the search guid, the workspace exists.  Otherwise,
        // it does not.

        return (workspaces.begin() != workspaces.end());
//        auto guidIdx = workspaces.template get_index<N(byguid)>();
//        auto matched_guid_itr = guidIdx.lower_bound(guid);
//        return (matched_guid_itr != guidIdx.end()) &&
//               (matched_guid_itr->guid == guid);
    }

    boolean container::userIsMemberOfWorkspace(account_name user, uint64_t guid, boolean isActive) {
        membership_index memberships(_self, guid);

        // Using the guid index, we find the first entry in the membership table for the lower bounds of the
        // specified guid, then iterate through until we either find an entry for the user, or the iterator's
        // guid does not match the search guid.

        auto guidIdx = memberships.template get_index<N(byuser)>();
        auto matched_guid_itr = guidIdx.lower_bound(user);

        boolean found = false;

        while (!found && matched_guid_itr != guidIdx.end()) {
            found = (matched_guid_itr->user == user) && (!isActive || (isActive && matched_guid_itr->status == 1));
            matched_guid_itr++;
        }

        return found;
    }

    boolean container::fileExistsInWorkspace(uint128_t fileID, uint64_t guid) {
        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<N(byfileid)>();
        auto matchedFileID = fileIDIdx.lower_bound(fileID);

        return (matchedFileID != fileIDIdx.end());
    }

    boolean container::fileVersionExistsInWorkspace(uint128_t fileID, uint128_t versionID, uint64_t guid) {
        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<N(byfileid)>();
        auto matchedFileID = fileIDIdx.lower_bound(fileID);

        boolean found = false;

        while (!found && matchedFileID != fileIDIdx.end() && matchedFileID->fileID == fileID) {
            found = (matchedFileID->versionID == versionID);
            matchedFileID++;
        }

        return found;
    }
}


EOSIO_ABI( secrataContainer::container, (create)(update)(invite)(accept)(decline)
        (remove)(addmessage)(ackmessage)(addfile)(removefile)
(ackfile))

