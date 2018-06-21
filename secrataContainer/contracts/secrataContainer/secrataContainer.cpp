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

    void container::create(account_name owner,
                           uint64_t guid,
                           string workspaceName,
                           string workspaceDescription,
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

    void container::update(account_name user,
                           uint64_t guid,
                           string workspaceDescription) {

        require_auth(user);

        eosio_assert(workspaceExists(guid), "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, user, N(updatewks)),
                     "User does not have permission to update the workspace");

        workspace_index workspaces(_self, guid);

        auto workspaceItr = workspaces.begin();

        workspaces.modify(workspaceItr, user, [&](auto &w) {
            w.description = workspaceDescription;
        });
    }

    // -------- Membership --------

    void container::invite(account_name inviter,
                           account_name invitee,
                           uint64_t guid,
                           string key,
                           std::vector <userPermission> permissions) {

        require_auth(inviter);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(inviter, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, inviter, N(invite), invitee),
                     "User does not have permission to invite users to this workspace");

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
            return ;
        }

        // Clear the invitees existing permissions and assign the given permissions.
        removeAllUserPermissions(guid, invitee);
        for (userPermission p : permissions) {
            addperm(inviter, invitee, guid, p.permName, p.scope);
        }
    }

    void container::accept(account_name invitee,
                           uint64_t guid) {

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

    void container::decline(account_name invitee,
                            uint64_t guid) {

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

    void container::remove(account_name remover,
                           account_name member,
                           uint64_t guid) {

        require_auth(remover);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(remover, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, remover, N(remove), member),
                     "User does not have permission to remove members from the workspace");

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

        // Remove all the permissions for the removed user
        removeAllUserPermissions(guid, member);
    }

    // -------- Messages --------

    void container::addmessage(account_name author,
                               uint64_t guid,
                               string message,
                               string mimeType) {

        require_auth(author);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(author, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, author, N(addmessage)),
                     "User does not have permission to add messages to the workspace");

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

    void container::ackmessage(account_name user,
                               uint64_t guid,
                               uint128_t msgID) {

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

    void container::addfile(account_name uploader,
                            uint64_t guid,
                            uint128_t parentID,
                            uint128_t fileID,
                            uint128_t versionID,
                            std::vector <uint128_t> ancestorVersionIDs,
                            string fileMetadata) {

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

        for (uint128_t ancestor : ancestorVersionIDs) {
            eosio_assert(fileVersionExistsInWorkspace(fileID, ancestor, guid),
                         "The specified ancestor version does not exist in this workspace");
        }

        eosio_assert(userHasPermission(guid, uploader, N(addfile)),
                     "User does not have permission to add files to the workspace");

        file_index files(_self, guid);

        files.emplace(uploader, [&](auto &f) {
            f.id = files.available_primary_key();
            f.fileID = fileID;
            f.parentID = parentID;
            f.versionID = versionID;
            f.parentVersions = ancestorVersionIDs;
            f.uploader = uploader;
            f.timestamp = now();
            f.status = 1;
            f.metadata = fileMetadata;
        });
    }

    void container::removefile(account_name remover,
                               uint64_t guid,
                               uint128_t fileID,
                               uint128_t versionID) {

        require_auth(remover);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(remover, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        eosio_assert(versionID == 0 || fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "The specified file version does not exist in this workspace");

        eosio_assert(userHasPermission(guid, remover, N(removefile)),
                     "User does not have permission to remove files from the workspace");

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

    void container::ackfile(account_name user,
                            uint64_t guid,
                            uint128_t fileID,
                            uint128_t versionID) {

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

    void container::lockfile(account_name user,
                             uint64_t guid,
                             uint128_t fileID) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        eosio_assert(userHasPermission(guid, user, N(lockfile)),
                     "User does not have permission to lock files in the workspace");

        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<N(byfileid)>();
        auto matchingFile = fileIDIdx.lower_bound(fileID);

        fileIDIdx.modify(matchingFile, user, [&](auto &f) {
            f.lockOwner = user;
        });
    }

    void container::unlockfile(account_name user,
                               uint64_t guid,
                               uint128_t fileID) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<N(byfileid)>();
        auto matchingFile = fileIDIdx.lower_bound(fileID);

        eosio_assert(matchingFile->lockOwner == 0 || matchingFile->lockOwner == user,
                     "You do no hold the lock on this file");

        fileIDIdx.modify(matchingFile, user, [&](auto &f) {
            f.lockOwner = 0;
        });

    }

    void container::addtag(account_name user,
                           uint64_t guid,
                           uint128_t fileID,
                           uint128_t versionID,
                           boolean isPublic,
                           string value) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        eosio_assert(userHasPermission(guid, user, N(addtag)),
                     "User does not have permission to add file tags in the workspace");

        fileTag_index fileTags(_self, guid);

        auto fileIDIdx = fileTags.template get_index<N(byverid)>();
        auto matchingTag = fileIDIdx.lower_bound(versionID);

        uint64_t targetScope = user;
        if (isPublic) {
            targetScope = N(public);
        }

        cout << ((const char *) "Target Scope: ") << targetScope << ((const char *) "\n");

        while (matchingTag != fileIDIdx.end() && matchingTag->versionID == versionID && matchingTag->fileID == fileID) {
            eosio_assert(matchingTag->scope != targetScope || matchingTag->value != value,
                         "The specified tag already exists");
            matchingTag++;
        }

        fileTags.emplace(user, [&](auto &t) {
            t.id = fileTags.available_primary_key();
            t.fileID = fileID;
            t.versionID = versionID;
            t.scope = targetScope;
            t.value = value;
        });
    }

    void container::removetag(account_name user,
                              uint64_t guid,
                              uint128_t fileID,
                              uint128_t versionID,
                              boolean isPublic,
                              string value) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        if (isPublic) {
            eosio_assert(userHasPermission(guid, user, N(addtag)),
                         "User does not have permission to remove file tags in the workspace");
        }

        fileTag_index fileTags(_self, guid);

        auto fileIDIdx = fileTags.template get_index<N(byverid)>();
        auto matchingTag = fileIDIdx.lower_bound(versionID);

        uint64_t targetScope = user;
        if (isPublic) {
            targetScope = N(public);
        }

        cout << ((const char *) "Target Scope: ") << targetScope << ((const char *) "\n");

        while (matchingTag != fileIDIdx.end() && matchingTag->versionID == versionID && matchingTag->fileID == fileID &&
               (matchingTag->scope != targetScope || matchingTag->value != value)) {
            matchingTag++;
        }

        eosio_assert(matchingTag != fileIDIdx.end(), "The specified tag does not exist");

        fileIDIdx.erase(matchingTag);
    }

    // -------- Permissions --------

    void container::addperm(account_name user,
                            account_name target,
                            uint64_t guid,
                            string permName,
                            string scope) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        // TODO - Re-enable this assertion once we have enabled full creator permissions
//        eosio_assert(userHasPermission(guid, user, N(updateperm), target),
//                     "User does not have permission to modify user permissions in the workspace");

        if ( internalAddPerm(user, target, guid, permName, scope) ) {
            print("Added Permissions\n");
        }
    }

    void container::removeperm(account_name user,
                               account_name target,
                               uint64_t guid,
                               string permName,
                               string scope) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        // TODO - Re-enable this assertion once we have enabled full creator permissions
//        eosio_assert(userHasPermission(guid, user, N(updateperm), target),
//                     "User does not have permission to modify user permissions in the workspace");

        if (internalRemovePerm(user, target, guid, permName, scope) ) {
            print("Removed Permission");
        }
    }


    void container::addperms(account_name user,
                            account_name target,
                            uint64_t guid,
                            std::vector <userPermission> permissions) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        // TODO - Re-enable this assertion once we have enabled full creator permissions
//        eosio_assert(userHasPermission(guid, user, N(updateperm), target),
//                     "User does not have permission to modify user permissions in the workspace");

        for (userPermission p : permissions) {
            internalAddPerm(user, target, guid, p.permName, p.scope);
        }
    }

    void container::removeperms(account_name user,
                                account_name target,
                                uint64_t guid,
                                std::vector <userPermission> permissions) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        // TODO - Re-enable this assertion once we have enabled full creator permissions
//        eosio_assert(userHasPermission(guid, user, N(updateperm), target),
//                     "User does not have permission to modify user permissions in the workspace");

        for (userPermission p : permissions) {
            internalRemovePerm(user, target, guid, p.permName, p.scope);
        }
    }


    boolean container::internalAddPerm(account_name user,
                                       account_name target,
                                       uint64_t guid,
                                       string permName,
                                       string scope) {
        boolean added = false ;

        uint64_t permType = eosio::string_to_name(permName.c_str());

        uint128_t key = permType;
        key = key << 64 | target;

        permission_index permissions(_self, guid);

        auto permUserIdx = permissions.template get_index<N(bypermuser)>();
        auto matchingPerm = permUserIdx.lower_bound(key);

        while (matchingPerm != permUserIdx.end() && matchingPerm->permissionType == permType &&
               matchingPerm->user == target && matchingPerm->scope != scope) {
            matchingPerm++;
        }

        if (matchingPerm == permUserIdx.end() || matchingPerm->permissionType != permType ||
            matchingPerm->user != target || matchingPerm->scope != scope) {
            // Add the user's permission
            permissions.emplace(user, [&](auto &p) {
                p.id = permissions.available_primary_key();
                p.permissionType = permType;
                p.user = target;
                p.scope = scope;
            });
            added = true ;
        }

        return added;
    }


    boolean container::internalRemovePerm(account_name user,
                                          account_name target,
                                          uint64_t guid,
                                          string permName,
                                          string scope) {
        boolean removed = false ;

        uint64_t permType = eosio::string_to_name(permName.c_str());

        uint128_t key = permType;
        key = key << 64 | target;

        permission_index permissions(_self, guid);

        auto permUserIdx = permissions.template get_index<N(bypermuser)>();
        auto matchingPerm = permUserIdx.lower_bound(key);

        while (matchingPerm != permUserIdx.end() && matchingPerm->permissionType == permType &&
               matchingPerm->user == target && matchingPerm->scope != scope) {
            matchingPerm++;
        }

        if (matchingPerm != permUserIdx.end() ) {
            permUserIdx.erase(matchingPerm);
            removed = true ;
        }

        return removed;
    }


    // ======== Private Methods ========

    boolean container::workspaceExists(uint64_t guid) {
        workspace_index workspaces(_self, guid);

        // This workspace exists if there is an entry in the workspace guid scoped table.

        return (workspaces.begin() != workspaces.end());
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

    boolean container::userHasPermission(uint64_t guid, account_name user, uint64_t permType) {
        return userHasPermission(guid, user, permType, "");
    }

    boolean container::userHasPermission(uint64_t guid, account_name user, uint64_t permType, uint128_t scope) {
        std::stringstream ss;
        ss << scope;
        string scopeStr = ss.str();
        return userHasPermission(guid, user, permType, scopeStr);
    }

    boolean container::userHasPermission(uint64_t guid, account_name user, uint64_t permType, account_name scope) {
        std::stringstream ss;
        ss << scope;
        string scopeStr = ss.str();
        return userHasPermission(guid, user, permType, scopeStr);
    }

    boolean container::userHasPermission(uint64_t guid, account_name user, uint64_t permType, string scope) {
        permission_index permissions(_self, guid);

        uint128_t key = permType;
        key = key << 64 | user;

        auto permUserIdx = permissions.template get_index<N(bypermuser)>();
        auto matchingPerm = permUserIdx.lower_bound(key);

        // TODO - Re-enable full creator permissions
        boolean hasPerm = false;//userOwnsWorkspace(guid, user) ;

        while (!hasPerm && matchingPerm != permUserIdx.end() && matchingPerm->user == user &&
               matchingPerm->permissionType == permType) {
            hasPerm = (matchingPerm->scope.empty() || matchingPerm->scope == scope);
            matchingPerm++;
        }

        return hasPerm;
    }

    boolean container::userOwnsWorkspace(uint64_t guid, account_name user) {
        workspace_index workspaces(_self, guid);

        auto workspaceInfo = workspaces.begin();

        return (workspaceInfo != workspaces.end() && workspaceInfo->owner == user);
    }

    void container::removeAllUserPermissions(uint64_t guid, account_name user) {
        permission_index permissions(_self, guid);

        auto nameIdx = permissions.template get_index<N(byuser)>();
        auto matchingPerm = nameIdx.lower_bound(user);

        while (matchingPerm != nameIdx.end() && matchingPerm->user == user) {
            matchingPerm = nameIdx.erase(matchingPerm);
        }
    }
}


EOSIO_ABI( secrataContainer::container, (create)(update)(invite)(accept)(decline)
        (remove)(addmessage)(ackmessage)(addfile)(removefile)
        (ackfile)(addtag)(removetag)(lockfile)(unlockfile)(addperm)
(removeperm)(addperms)(removeperms))

