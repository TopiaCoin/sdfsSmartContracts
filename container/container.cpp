#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>
#include <string>

using namespace eosio;

using std::string;

typedef uint8_t boolean;

CONTRACT container : public eosio::contract {

private:
    struct userPermission {
        string permName;
        string scope;
    };

public:
    using contract::contract;

    // -------- Container Actions --------

    /**
     * Creates a new workspace with the specified GUID, name, and
     * description.  The key is assigned to the user who creates the
     * workspace.
     *
     * @param owner The user account to whom this workspace will belong.
     * @param guid The unique identifier assigned to this workspace.
     * @param workspaceName The name assigned to the this workspace.
     * @param workspaceDescription The description assigned to this workspace.
     * @param key The encrypted workspace key assigned to the creator of this workspace.
     */
    ACTION create(name owner,
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
            workspace.newowner = name{0};
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

    /**
     * Updates the description of a workspace.  In order to update the
     * workspace description, the user must either be the owner of the
     * workspace, or have been granted the 'updatewks' permission.
     *
     * @param user The user who is changing the workspace description.
     * @param guid The unique identifier of the workspace whose description is being changed.
     * @param workspaceDescription The new description to be assigned to the workspace.
     */
    ACTION update (name user,
        uint64_t guid,
        string workspaceDescription) {

        require_auth(user);

        eosio_assert(workspaceExists(guid), "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, user, name{"updatewks"}),
                     "User does not have permission to update the workspace");

        workspace_index workspaces(_self, guid);

        auto workspaceItr = workspaces.begin();

        workspaces.modify(workspaceItr, user, [&](auto &w) {
            w.description = workspaceDescription;
        });
    }

    /**
     * Offer ownership of a workspace to another member.  The newowner
     * must be an existing member of the workspace.  This method can only
     * be invoked by the current owner of the workspace.
     *
     * @param guid The unique identifier of the workspace whose ownership is being offered.
     * @param newowner The account name of the member who is being offered ownership of the workspace.
     */
    ACTION offerowner(uint64_t guid,
        name newowner) {

        eosio_assert(workspaceExists(guid), "The specified workspace does not exist");

        eosio_assert(is_account(newowner), "The specified account does not exist");

        eosio_assert(userIsMemberOfWorkspace(newowner, guid, true),
                     "Ownership cannot be given to a user who is not an active member");

        // Only the workspace owner can transfer ownership
        require_auth(getOwner(guid));

        workspace_index workspaces(_self, guid);
        auto workspaceItr = workspaces.begin();

        workspaces.modify(workspaceItr, workspaceItr->owner, [&](auto &w) {
            w.newowner = newowner;
        });
    }

    /**
     * Accept the offer of ownership for a workspace.  This method can
     * only be invoked by the user who has been offered ownership.  Once
     * invoked, the user becomes the new owner of the workspace.
     *
     * @param guid  The unique identifier of the workspace whose ownership is being accepted.
     */
    ACTION acceptowner(uint64_t guid) {

        eosio_assert(workspaceExists(guid), "The specified workspace does not exist");

        workspace_index workspaces(_self, guid);

        auto workspaceItr = workspaces.begin();

        // Only the specified new owner can accept ownership
        require_auth(workspaceItr->newowner);

        eosio_assert(userIsMemberOfWorkspace(workspaceItr->newowner, guid, true),
                     "You are not a member of the workspace");

        workspaces.modify(workspaceItr, workspaceItr->newowner, [&](auto &w) {
            w.owner = workspaceItr->newowner;
            w.newowner = name{0};
        });

        print("\n");
    }

    /**
     * Rescind the offer of ownership for a workspace.  This method can
     * only be invoked by the user who offered ownership.  Once invoked,
     * the user who was offered ownership can no longer accept ownership.
     *
     * @param guid The unique identifier of the workspace whose ownership offer is being rescinded.
     */
    ACTION rescindowner(uint64_t guid) {

        eosio_assert(workspaceExists(guid), "The specified workspace does not exist");

        // Only the workspace owner can rescind ownership transfer
        require_auth(getOwner(guid));

        workspace_index workspaces(_self, guid);
        auto workspaceItr = workspaces.begin();

        workspaces.modify(workspaceItr, workspaceItr->owner, [&](auto &w) {
            w.newowner = name{0};
        });
    }

    /**
     * Destorys a workspace and all of its content.  All members are removed
     * from the workspace.  All files, tags, and file receipts are removed.
     * All messages and message receipts are removed.  All locks and permissions
     * are removed.
     *
     * @param guid The unique identifier of the workspace that is being destroyed.
     */
    ACTION destroy(uint64_t guid) {

        // Only the owner can destroy the workspace.
        require_auth(getOwner(guid));

        // Remove all message receipts from the workspace
        messageReceipt_index messageReceipts(_self, guid);
        auto messageReceiptIdx = messageReceipts.begin();
        while (messageReceiptIdx != messageReceipts.end()) {
            messageReceiptIdx = messageReceipts.erase(messageReceiptIdx);
        }

        // Remove all the messages from the workspace
        message_index messages(_self, guid);
        auto messageIdx = messages.begin();
        while (messageIdx != messages.end()) {
            messageIdx = messages.erase(messageIdx);
        }

        // Remove all file tags from the workspace
        fileTag_index fileTags(_self, guid);
        auto fileTagIdx = fileTags.begin();
        while (fileTagIdx != fileTags.end()) {
            fileTagIdx = fileTags.erase(fileTagIdx);
        }

        // Remove all file receipts from the the workspace
        fileReceipt_index fileReceipts(_self, guid);
        auto fileReceiptIdx = fileReceipts.begin();
        while (fileReceiptIdx != fileReceipts.end()) {
            fileReceiptIdx = fileReceipts.erase(fileReceiptIdx);
        }

        // Remove all the files from the workspace
        file_index files(_self, guid);
        auto fileIdx = files.begin();
        while (fileIdx != files.end()) {
            fileIdx = files.erase(fileIdx);
        }

        // Remove all the members from the workspace
        membership_index membership(_self, guid);
        auto memberIdx = membership.begin();
        while (memberIdx != membership.end()) {
            memberIdx = membership.erase(memberIdx);
        }

        // Remove all permissions from the workspace
        permission_index permissions(_self, guid);
        auto permissionIdx = permissions.begin();
        while (permissionIdx != permissions.end()) {
            permissionIdx = permissions.erase(permissionIdx);
        }

        // Remove the locks
        lock_index locks(_self, guid);
        auto lockIdx = locks.begin();
        while (lockIdx != locks.end()) {
            lockIdx = locks.erase(lockIdx);
        }

        // Remove the workspace Info
        workspace_index workspaces(_self, guid);
        auto workspaceIdx = workspaces.begin();
        while (workspaceIdx != workspaces.end()) {
            workspaceIdx = workspaces.erase(workspaceIdx);
        }
    }

    // -------- Membership Actions --------

    /**
     * Invites a new user to a workspace.  The inviter muse be an active
     * member of the workspace.  The invitee must be a valid, registered
     * account on the blockchain.  The key is the workspace key encrypted
     * for the invited user.  The permissions contain the initial set of
     * permissions that will assigned to the new member.  If no permissions
     * are specified, the new member will only be able to see the content
     * in the workspace.
     *
     * @param inviter The account name of the user who is inviting the new member.
     * @param invitee The account name of the user who is being invited.
     * @param guid The unique identifier of the workspace to which the new member is being invited.
     * @param key The workspace key encrypted for the new member.
     * @param permissions The initial set of permissions to assign to the new member.
     */
    ACTION invite (name inviter, 
        name invitee,
        uint64_t guid,
        string key,
        std::vector<userPermission> permissions ) {

        require_auth(inviter);

        eosio_assert(is_account(invitee),
                     "The specified account does not exist");

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(inviter, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, inviter, name{"invite"}, invitee),
                     "User does not have permission to invite users to this workspace");

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<name{"byuser"}>();
        auto matched_guid_itr = guidIdx.lower_bound(invitee.value);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        if (matched_guid_itr == guidIdx.end() || matched_guid_itr->user != invitee) {
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
            return;
        }

        // Clear the invitees existing permissions and assign the given permissions.
        removeAllUserPermissions(guid, invitee);
        for (userPermission p : permissions) {
            addperm(inviter, invitee, guid, p.permName, p.scope);
        }
    }

    /**
     * Accept an invitation to a workspace.
     *
     * @param invitee The account name of the user who is accepting the invitation.
     * @param guid The unique identifier of the workspace whose invite is being accepted.
     */
    ACTION accept(name invitee,
        uint64_t guid) {

        require_auth(invitee);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(invitee, guid, false),
                     "You are not a member of the workspace");

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<name{"byuser"}>();
        auto matched_guid_itr = guidIdx.lower_bound(invitee.value);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        eosio_assert(
                matched_guid_itr != guidIdx.end() && matched_guid_itr->user == invitee && matched_guid_itr->status == 0,
                "No Pending Invite found for the specified user and workspace");

        // Update the existing record, to mark the user as active.
        guidIdx.modify(matched_guid_itr, invitee, [&](auto &m) {
            m.status = 1;
        });
    }

    /**
     * Declines an invitation to a workspace.
     *
     * @param invitee The account name of the user who is declining the invitation.
     * @param guid The unique identifier of the workspace whose invite is being declined.
     */
    ACTION decline(name invitee,
        uint64_t guid) {

        require_auth(invitee);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(invitee, guid, false),
                     "You are not a member of the workspace");

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<name{"byuser"}>();
        auto matched_guid_itr = guidIdx.lower_bound(invitee.value);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != invitee) {
            matched_guid_itr++;
        }

        eosio_assert(matched_guid_itr->user == invitee && matched_guid_itr->status == 0,
                     "No Pending Invite found for the specified user and workspace");

        // Erase the entry for the removed user.
        guidIdx.erase(matched_guid_itr);
    }

    /**
     * Removes a member from a workspace.  The remover must be an active
     * member of the workspace and have been granted permission to remove
     * other users.  Special dispensation is made for the workspace owner,
     * who can always remove users from a workspace, and the case where a
     * user is removing themselves.
     *
     * @param remover The account name of the user is performing the removal.
     * @param member The account name of the user who is being removed.
     * @param guid The unique identifier of the workspace from which the user is being removed.
     */
    ACTION remove(name remover,
        name member,
        uint64_t guid) {

        require_auth(remover);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(remover, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, remover, name{"remove"}, member),
                     "User does not have permission to remove members from the workspace");

        eosio_assert(member != getOwner(guid),
                     "The workspace owner cannot be removed from the workspace");

        eosio_assert(!entityIsLocked(guid, member.value),
                     "Member is locked and cannot be removed.");

        membership_index memberships(_self, guid);

        // Get any existing Membership record for the invitee.
        auto guidIdx = memberships.template get_index<name{"byuser"}>();
        auto matched_guid_itr = guidIdx.lower_bound(member.value);

        while (matched_guid_itr != guidIdx.end() && matched_guid_itr->user != member) {
            matched_guid_itr++;
        }

        if (matched_guid_itr != guidIdx.end() && matched_guid_itr->user == member) {
            // Erase the entry for the member
            guidIdx.erase(matched_guid_itr);
        }

        // Remove all the permissions for the removed user
        removeAllUserPermissions(guid, member);

        // Remove all the locks held by the removed user.
        removeAllLocks(guid, member);
    }

    /**
     * Locks a members record for a workspace.  This prevents the user
     * from being removed from the workspace.  The locker must be an active
     * member of the workspace and have the `lockuser` permission, or be
     * the owner of the workspace.
     *
     * @param locker The account name of the user who is locking the member.
     * @param lockee The account name of the member who is being locked.
     * @param guid The unique identifier of the workspace in which the member is being locked.
     */
    ACTION lockmember(name locker,
        name lockee,
        uint64_t guid) {

        require_auth(locker);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(locker, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, locker, name{"ockuser"}, lockee.value),
                     "User does not have permission to remove members from the workspace");

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(lockee.value);

        if (matchingLock != lockIdx.end() && matchingLock->guid == lockee.value) {
            // There is an existing lock.  Does the user own it?
            eosio_assert(matchingLock->lockOwner == locker,
                         "This member is already locked");
        }

        locks.emplace(locker, [&](auto &l) {
            l.id = locks.available_primary_key();
            l.guid = lockee.value;
            l.lockOwner = locker;
        });
    }

    /**
     * Unlocks a members record for a workspace.  Once unlocked, the user
     * is able to leave the workspace normally.  The unlocker must be an
     * active member of the workspace and have the 'lockuser' permission,
     * be the owner of the workspace, or be attempting to unlock their own
     * member record.
     *
     * @param locker The account name of the user who is unlocking the member.
     * @param lockee The account name of the member who is being unlocked.
     * @param guid The unique identifier of the workspace in which the member is being unlocked.
     */
    ACTION unlockmember(name locker,
        name lockee,
        uint64_t guid) {

        require_auth(locker);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(locker, guid, true),
                     "You are not a member of the workspace");

        eosio_assert((locker == lockee) || userHasPermission(guid, locker, name{"lockuser"}, lockee),
                     "User does not have permission to remove members from the workspace");

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(lockee.value);

        if (matchingLock != lockIdx.end() && matchingLock->guid == lockee.value) {
            // There is an existing lock.  Does the user own it?
            eosio_assert((locker == lockee) || matchingLock->lockOwner == locker,
                         "The user does not hold the lock on this member.");
        }

        lockIdx.erase(matchingLock);
    }

    // -------- Message Methods --------

    /**
     * Adds a message to a workspace.  The author must be an active member
     * of the workspace and have been granted the 'addmessage' permission.
     * A unique message ID will be assigned to the message.
     *
     * @param author The account name of the user who is adding the message.
     * @param guid The unique identifier of the workspace to which the message is being added.
     * @param message The message that is being added to the worksapce.
     * @param mimeType The MIME type of the message (e.g. text/plain).
     */
    ACTION addmessage(name author,
        uint64_t guid,
        string message,
        string mimeType) {

        require_auth(author);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(author, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, author, name{"addmessage"}),
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

#warning Should the author automatically acknowledge his own message?
    }

    /**
     * Acknowledges a message in the a workspace.  The user must be an active
     * member of the workspace.
     *
     * @param user The account name of the user who is acknowledging the message.
     * @param guid The unique identifier of the workspace containing the acknowledged message.
     * @param msgID The unique identifier of the message being acknowledged.
     */
    ACTION ackmessage(name user,
        uint64_t guid,
        uint128_t msgID) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        // Make sure the specified message exists in the workspace

        message_index messages(_self, guid);
        auto messageIDIdx = messages.template get_index<name{"bymsgid"}>();
        auto existingMessage = messageIDIdx.lower_bound(msgID);

        eosio_assert(existingMessage != messageIDIdx.end(),
                     "No message with the specified ID exists in this workspace");

        // Find any existing receipt, and only add if it doesn't exist

        messageReceipt_index receipts(_self, guid);

        auto msgIdIdx = receipts.template get_index<name{"bymsgid"}>();
        auto matchMsgIdx = msgIdIdx.lower_bound(msgID);

        while (matchMsgIdx != msgIdIdx.end() && matchMsgIdx->msgID == msgID &&
               matchMsgIdx->user != user) {
            matchMsgIdx++;
        }

        eosio_assert(matchMsgIdx == msgIdIdx.end(), "This user has already acknowledged this message");

        receipts.emplace(user, [&](auto &r) {
            r.id = receipts.available_primary_key();
            r.msgID = msgID;
            r.user = user;
            r.timestamp = now();
        });
    }

    // -------- Files --------

    /**
     * Adds a new file/version to a workspace.  The uploader must be an active
     * member of the workspace and have been granted the 'addfile' permission.
     * If a parentID is specified, A file with that ID must exist in the
     * workspace.  If ancestorVersionIDs are specified, files with whose
     * versionIDs must exist in the workspace.
     *
     * If there is already a file with the specified fileID in the workspace,
     * the version ID is required to be unique amongst all versions of the file,
     * and the ancestorVersionIDs must correspond to existing versions of the file.
     *
     * @param uploader The account name of the user who is adding the file/version.
     * @param guid The unique identifier of the workspace to which the file/version is being added.
     * @param parentID The unique identifier of the file that is the parent of the new file/version.
     * @param fileID The unique identifier of the file being added.
     * @param versionID The unique identifier of the version being added.
     * @param ancestorVersionIDs The unique identifiers of the versions that are immediate ancestors of this version.
     * @param fileMetadata The metadata for the added file/version.
     */
    ACTION addfile(name uploader,
        uint64_t guid,
        uint128_t parentID,
        uint128_t fileID,
        uint128_t versionID,
        std::vector<uint128_t> ancestorVersionIDs,
        string fileMetadata) {

        require_auth(uploader);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(uploader, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, uploader, name{"addfile"}),
                     "User does not have permission to add files to the workspace");

        eosio_assert(versionID != 0, "Cannot specify a version ID of 0");

        eosio_assert(!fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "A file with this File ID and Version ID already exists in this workspace");

        eosio_assert(!entityIsLocked(guid, fileID),
                     "The file is locked.");

        eosio_assert(parentID == 0 || fileExistsInWorkspace(parentID, guid),
                     "The specified parent file does not exist in this workspace");

        // Verify that the listed ancestors all exist in this workspace.
        for (uint128_t ancestor : ancestorVersionIDs) {
            eosio_assert(fileVersionExistsInWorkspace(fileID, ancestor, guid),
                         "The specified ancestor version does not exist in this workspace");
        }

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

    /**
     * Removes a file/version from a workspace.  The remover must be an active
     * member of the workspace and have been granted the 'removefile' permission.
     * Specifying a versionID of 0 will cause all versions of the file to be removed.
     *
     * @param remover The account name of the user who is removing the file/version.
     * @param guid The unique identifier of the workspace from which the file/version is being removed.
     * @param fileID The unique identifier of the file whose version(s) is being removed.
     * @param versionID The unique identifier of the version that is being removed, or 0 if all versions of the file should be removed.
     */
    ACTION removefile(name remover,
        uint64_t guid,
        uint128_t fileID,
        uint128_t versionID) {

        require_auth(remover);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(remover, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, remover, name{"removefile"}),
                     "User does not have permission to remove files from the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        eosio_assert(versionID == 0 || fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "The specified file version does not exist in this workspace");

        eosio_assert(!entityIsLocked(guid, fileID),
                     "The file is locked.");

        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<name{"byfileid"}>();
        auto matchingFile = fileIDIdx.lower_bound(fileID);

        std::vector<uint128_t> ancestorIDs;

        // Verify that the versions that we will be deleting (either all or a specific one) are not locked.
        while (matchingFile != fileIDIdx.end() && matchingFile->fileID == fileID) {
            if (versionID == 0 || matchingFile->versionID == versionID) {
                eosio_assert(!entityIsLocked(guid, matchingFile->versionID), "A version of this file is locked.");
            }
            if (versionID != 0 && matchingFile->versionID == versionID) {
                // We are deleting a specific version and this is it.  Grab it's ancestors so that we can use them to fix the ancestry graph later
                ancestorIDs = std::vector<uint128_t>(matchingFile->parentVersions);
            }
            matchingFile++;
        }

        // Run through every entry for this file deleting the appropriate version(s).
        matchingFile = fileIDIdx.lower_bound(fileID);
        while (matchingFile != fileIDIdx.end() && matchingFile->fileID == fileID) {
            if (versionID == 0 || matchingFile->versionID == versionID) {
                matchingFile = fileIDIdx.erase(matchingFile);
            } else {
                // If matchingFile->parentVersions contains the removed versionID
                auto verItr = std::find(matchingFile->parentVersions.begin(), matchingFile->parentVersions.end(), versionID);
                if ( verItr != matchingFile->parentVersions.end() ) {
                    fileIDIdx.modify(matchingFile, remover, [&](auto& f){
                        if ( matchingFile->parentVersions.size() == 1) {
                            f.parentVersions = ancestorIDs;
                        } else if ( matchingFile->parentVersions.size() > 1){
                            std::vector<uint128_t> newAncestors(matchingFile->parentVersions);
                            newAncestors.erase(std::remove(newAncestors.begin(), newAncestors.end(), versionID), newAncestors.end());
                            f.parentVersions = newAncestors;
                        }
                    });
                    // If matchingFile->parentVersions.size() == 1, then update the matchingFile->parentVersions to be ancestorIDs
                    // If matchingFile->parentVersions.size() > 1, then remove versionID from matchingFile->parentVersions
                }
                matchingFile++;
            }
        }

#warning Consider cascade deletion of child entries
    }

    /**
     * Acknowledges a file version.  The user must be an active member of the workspace.
     *
     * @param user The account name of the user who is acknowledging a file version.
     * @param guid The unique identifier of the workspace in which the file version resides.
     * @param fileID The unique identifier of the file whose version is being acknowledged.
     * @param versionID The unique identifier of the version of the that is being acknowledged.
     */
    ACTION ackfile (name user,
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

        auto receiptIdx = fileReceipts.template get_index<name{"byfileid"}>();
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

    /**
     * Locks a file in a workspace.  Locked files cannot be deleted,
     * and cannot have new versions uploaded.  The user must be an
     * active member of the workspace and have been granted the
     * 'lockfile' permission.
     *
     * @param user The account name of the user who is locking the file.
     * @param guid The unique identifier of the workspace in which the file exists.
     * @param fileID The unique identifier of the file that is being locked.
     */
    ACTION lockfile (name user,
        uint64_t guid,
        uint128_t fileID) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid),
                     "The specified file does not exist in this workspace");

        eosio_assert(userHasPermission(guid, user, name{"lockfile"}),
                     "User does not have permission to lock files in the workspace");

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(fileID);

        if (matchingLock != lockIdx.end() && matchingLock->guid == fileID) {
            // There is an existing lock.  Does the user own it?
            eosio_assert(matchingLock->lockOwner == user, "This file is already locked");
        }

        locks.emplace(user, [&](auto &l) {
            l.id = locks.available_primary_key();
            l.guid = fileID;
            l.lockOwner = user;
        });
    }

    /**
     * Locks a specific version of a file.  Locked versions cannot be
     * deleted.  The user must be an active member of the workspace and
     * have been granted the 'lockfile' permission.
     *
     * @param user The account name of the user who is locking the file.
     * @param guid The unique identifier of the workspace in which the file exists.
     * @param fileID The unique identifier of the file that is being locked.
     * @param versionID The unique identifier of the file version that is being locked.
     */
    ACTION lockver(name user,
        uint64_t guid,
        uint128_t fileID,
        uint128_t versionID) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "The specified file version does not exist in this workspace");

        eosio_assert(userHasPermission(guid, user, name{"lockfile"}),
                     "User does not have permission to lock files in the workspace");

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(versionID);

        if (matchingLock != lockIdx.end() && matchingLock->guid == versionID) {
            // There is an existing lock.  Does the user own it?
            eosio_assert(matchingLock->lockOwner == user, "This file version is already locked");
        }

        locks.emplace(user, [&](auto &l) {
            l.id = locks.available_primary_key();
            l.guid = versionID;
            l.lockOwner = user;
        });
    }

    /**
     * Unlocks a locked file in a workspace.  The user must be an
     * active member of the workspace and either be the current holder
     * of the file lock, or be the owner of the workspace.
     *
     * @param user The account name of the user who is unlocking the file.
     * @param guid The unique identifier of the workspace in which the file exists.
     * @param fileID The unique identifier of the file that is being unlocked.
     */
    ACTION unlockfile (name user,
        uint64_t guid,
        uint128_t fileID) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid),
                     "The specified file does not exist in this workspace");

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(fileID);

        if (matchingLock != lockIdx.end() && matchingLock->guid == fileID) {
            // There is an existing lock.  Does the user own it?
            eosio_assert(matchingLock->lockOwner == user, "The user does not hold the lock on this file.");
        }

        lockIdx.erase(matchingLock);
    }

    /**
     * Unlocks a specific version of a file.  The user must be an
     * active member of the workspace and either be the current holder
     * of the file version lock, or be the owner of the workspace.
     *
     * @param user The account name of the user who is unlocking the file.
     * @param guid The unique identifier of the workspace in which the file exists.
     * @param fileID The unique identifier of the file that is being unlocked.
     * @param versionID The unique identifier of the file version that is being unlocked.
     */
    ACTION unlockver (name user,
        uint64_t guid,
        uint128_t fileID,
        uint128_t versionID) {

        print(" ");
        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileVersionExistsInWorkspace(fileID, versionID, guid),
                     "The specified file version does not exist in this workspace");

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(versionID);

        if (matchingLock != lockIdx.end() && matchingLock->guid == versionID) {
            // There is an existing lock.  Does the user own it?
            eosio_assert(matchingLock->lockOwner == user, "The user does not hold the lock on this file version.");
        }

        lockIdx.erase(matchingLock);
    }

    /**
     * Adds a tag to a file version.  Tags can be specified as either
     * public or private.  Public tags can be removed by any member of
     * the workspace.  Private tags can only be removed by the user
     * who created them.  Typically, private tags are only shown to the
     * user who created them.
     *
     * The user must be an active member of the workspace and have been
     * granted the 'addtag' permission.
     *
     * @param user The account name of the user who is adding the tag.
     * @param guid The unique identifier of the workspace containing the file version being tagged
     * @param fileID The unique identifier of the file whose version is being tagged.
     * @param versionID The unique identifier of the file version that is being tagged.
     * @param isPublic True if the tag is public, otherwise false.
     * @param value The value of the tag that is being added to the file version.
     */
    ACTION addtag (name user,
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

        eosio_assert(userHasPermission(guid, user, name{"addtag"}),
                     "User does not have permission to add file tags in the workspace");

        fileTag_index fileTags(_self, guid);

        auto fileIDIdx = fileTags.template get_index<name{"byverid"}>();
        auto matchingTag = fileIDIdx.lower_bound(versionID);

        uint64_t targetScope = user.value;
        if (isPublic) {
            targetScope = name{"public"}.value;
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

    /**
     * Removes a tag from a file version.  The user must be an active
     * member of the workspace and have been granted the 'addtag'
     * permission in order to remove public tags.  A user can always
     * remove their private tags.
     *
     * @param user The account name of the user who is remove a tag.
     * @param guid The unique identifier of the workspace contianing the file version being untagged.
     * @param fileID The unique identifier of the file whose version is being untagged.
     * @param versionID The unique identifier of the file version that iw being untagged.
     * @param isPublic True if the tag being removed is public, otherwise false.
     * @param value The value of the tagthat is being removed from the file version.
     */
    ACTION removetag(name user,
        uint64_t guid,
        uint128_t fileID,
        uint128_t versionID,
        boolean isPublic, 
        string value ) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(fileExistsInWorkspace(fileID, guid), "The specified file does not exist in this workspace");

        if (isPublic) {
            eosio_assert(userHasPermission(guid, user, name{"addtag"}),
                         "User does not have permission to remove file tags in the workspace");
        }

        fileTag_index fileTags(_self, guid);

        auto fileIDIdx = fileTags.template get_index<name{"byverid"}>();
        auto matchingTag = fileIDIdx.lower_bound(versionID);

        uint64_t targetScope = user.value;
        if (isPublic) {
            targetScope = name{"public"}.value;
        }

        cout << ((const char *) "Target Scope: ") << targetScope << ((const char *) "\n");

        while (matchingTag != fileIDIdx.end() && matchingTag->versionID == versionID && matchingTag->fileID == fileID &&
               (matchingTag->scope != targetScope || matchingTag->value != value)) {
            matchingTag++;
        }

        eosio_assert(matchingTag != fileIDIdx.end(), "The specified tag does not exist");

        fileIDIdx.erase(matchingTag);
    }

    // -------- Permission Methods --------

    /**
     * Adds a permission to the target user account.  The user must be an
     * active member of the workspace and have been granted the 'updateperm'
     * permission.  The target user must be an active or pending member of
     * the workspace.
     *
     * @param user The account name of the user who is modifying permissions.
     * @param target The account name of the user to whom the permission is being added.
     * @param guid The unique identifier of the workspace in which the permission is being granted.
     * @param permName The name of the permission being granted.
     * @param scope The scope of the permission being granted.
     */
    ACTION addperm(name user,
        name target,
        uint64_t guid,
        string permName,
        string scope) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, user, name{"updateperm"}, target),
                     "User does not have permission to modify user permissions in the workspace");

        if (internalAddPerm(user, target, guid, permName, scope)) {
            print("Added Permissions\n");
        }
    }

    /**
     * Removes a permission from the target user account.  The user must be an
     * active member of the workspace and have been granted the 'updateperm'
     * permission.  The target user must be an active or pending member of
     * the workspace.
     *
     * @param user The account name of the user who is modifying permissions.
     * @param target The account name of the user from whom the permission is being removed.
     * @param guid The unique identifier of the workspace in which the permission is being removed.
     * @param permName The name of the permission being removed.
     * @param scope The scope of the permission being removed.
     */
    ACTION removeperm(name user,
        name target,
        uint64_t guid,
        string permName,
        string scope) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, user, name{"updateperm"}, target),
                     "User does not have permission to modify user permissions in the workspace");

        if (internalRemovePerm(user, target, guid, permName, scope)) {
            print("Removed Permission");
        }
    }

    /**
     * Adds a set of permissions to the target user account.  The user
     * must be an active member of the workspace and have been granted
     * the 'updateperm' permission.  The target user must be an active
     * or pending member of the workspace.
     *
     * @param user The account name of the user who is modifying permissions.
     * @param target The account name of the user to whom the permissions are being added.
     * @param guid The unique identifier of the workspace in which the permissions are being granted.
     * @param permissions A set of permissions that are being granted to the target user.
     */
    ACTION addperms(name user,
        name target,
        uint64_t guid,
        std::vector<userPermission> permissions) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userIsMemberOfWorkspace(target, guid, false),
                     "Target user is not a member of the workspace");

        eosio_assert(is_account(target),
                     "The target user account does not exist");

        eosio_assert(userHasPermission(guid, user, name{"updateperm"}, target),
                     "You do not have permission to modify user permissions in the workspace");

        for (userPermission p : permissions) {
            internalAddPerm(user, target, guid, p.permName, p.scope);
        }
    }

    /**
     * Removes a set of permissions from the target user account.  The user
     * must be an active member of the workspace and have been granted
     * the 'updateperm' permission.  The target user must be an active
     * or pending member of the workspace.
     *
     * @param user The account name of the user who is modifying permissions.
     * @param target The account name of the user from whom the permissions are being removed.
     * @param guid The unique identifier of the workspace in which the permissions are being removed.
     * @param permissions A set of permissions that are being removed from the target user.
     */
    ACTION removeperms(name user,
        name target,
        uint64_t guid,
        std::vector<userPermission> permissions) {

        require_auth(user);

        eosio_assert(workspaceExists(guid),
                     "The specified workspace does not exist");

        eosio_assert(userIsMemberOfWorkspace(user, guid, true),
                     "You are not a member of the workspace");

        eosio_assert(userHasPermission(guid, user, name{"updateperm"}, target),
                     "User does not have permission to modify user permissions in the workspace");

        for (userPermission p : permissions) {
            internalRemovePerm(user, target, guid, p.permName, p.scope);
        }
    }

private:

    boolean internalAddPerm(name user,
        name target,
        uint64_t guid,
        string permName, 
        string scope) {

        boolean added = false;

        name permType = name{permName.c_str()};

        uint128_t key = permType.value;
        key = key << 64 | target.value;

        permission_index permissions(_self, guid);

        auto permUserIdx = permissions.template get_index<name{"bypermuser"}>();
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
            added = true;
        }

        return added;
    }

    boolean internalRemovePerm(name user,
        name target,
        uint64_t guid,
        string permName,
        string scope) {

        boolean removed = false;

        name permType = name{permName.c_str()};

        uint128_t key = permType.value;
        key = key << 64 | target.value;

        permission_index permissions(_self, guid);

        auto permUserIdx = permissions.template get_index<name{"bypermuser"}>();
        auto matchingPerm = permUserIdx.lower_bound(key);

        while (matchingPerm != permUserIdx.end() && matchingPerm->permissionType == permType &&
               matchingPerm->user == target && matchingPerm->scope != scope) {
            matchingPerm++;
        }

        if (matchingPerm != permUserIdx.end()) {
            permUserIdx.erase(matchingPerm);
            removed = true;
        }

        return removed;
    }

    // -------- Utility Methods --------

    boolean workspaceExists(uint64_t guid) {

        workspace_index workspaces(_self, guid);

        // This workspace exists if there is an entry in the workspace guid scoped table.

        return (workspaces.begin() != workspaces.end());
    }

    boolean userIsMemberOfWorkspace(name user, uint64_t guid, boolean isActive) {

        membership_index memberships(_self, guid);

        // Using the guid index, we find the first entry in the membership table for the lower bounds of the
        // specified guid, then iterate through until we either find an entry for the user, or the iterator's
        // guid does not match the search guid.

        auto guidIdx = memberships.template get_index<name{"byuser"}>();
        auto matched_guid_itr = guidIdx.lower_bound(user.value);

        boolean found = false;

        while (!found && matched_guid_itr != guidIdx.end()) {
            found = (matched_guid_itr->user == user) && (!isActive || (isActive && matched_guid_itr->status == 1));
            matched_guid_itr++;
        }

        return found;
    }

    boolean fileExistsInWorkspace(uint128_t fileID, uint64_t guid) {

        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<name{"byfileid"}>();
        auto matchedFileID = fileIDIdx.lower_bound(fileID);

        return (matchedFileID != fileIDIdx.end());
    }

    boolean fileVersionExistsInWorkspace(uint128_t fileID, uint128_t versionID, uint64_t guid) {

        file_index files(_self, guid);

        auto fileIDIdx = files.template get_index<name{"byfileid"}>();
        auto matchedFileID = fileIDIdx.lower_bound(fileID);

        boolean found = false;

        while (!found && matchedFileID != fileIDIdx.end() && matchedFileID->fileID == fileID) {
            found = (matchedFileID->versionID == versionID);
            matchedFileID++;
        }

        return found;
    }

    name getOwner(uint64_t guid) {

        workspace_index workspaces(_self, guid);

        auto workspaceItr = workspaces.begin();

        return (workspaceItr != workspaces.end() ? workspaceItr->owner : name{0});
    }

    boolean userHasPermission(uint64_t guid, name user, name permType) {

        return userHasPermission(guid, user, permType, "");
    }

    boolean userHasPermission(uint64_t guid, name user, name permType, uint128_t scope) {

#warning This code needs to be re-implemented
        // std::stringstream ss;
        // ss << scope;
        // string scopeStr = ss.str();
        // return userHasPermission(guid, user, permType, scopeStr);
        return false ;
    }

    boolean userHasPermission(uint64_t guid, name user, name permType, name scope) {

        string scopeStr = scope.to_string();
        return userHasPermission(guid, user, permType, scopeStr);
    }

    boolean userHasPermission(uint64_t guid, name user, name permType, string scope) {

        permission_index permissions(_self, guid);

        uint128_t key = permType.value;
        key = key << 64 | user.value;

        auto permUserIdx = permissions.template get_index<name{"bypermuser"}>();
        auto matchingPerm = permUserIdx.lower_bound(key);

        // The owner of a workspace implicitly has all permissions on the workspace.
        boolean hasPerm = userOwnsWorkspace(guid, user);

        while (!hasPerm && matchingPerm != permUserIdx.end() && matchingPerm->user == user &&
               matchingPerm->permissionType == permType) {
            hasPerm = (matchingPerm->scope.empty() || matchingPerm->scope == scope);
            matchingPerm++;
        }

        return hasPerm;
    }

    boolean userOwnsWorkspace(uint64_t guid, name user) {

        workspace_index workspaces(_self, guid);

        auto workspaceInfo = workspaces.begin();

        return (workspaceInfo != workspaces.end() && workspaceInfo->owner == user);
    }

    void removeAllUserPermissions(uint64_t guid, name user) {

        permission_index permissions(_self, guid);

        auto nameIdx = permissions.template get_index<name{"byuser"}>();
        auto matchingPerm = nameIdx.lower_bound(user.value);

        while (matchingPerm != nameIdx.end() && matchingPerm->user == user) {
            matchingPerm = nameIdx.erase(matchingPerm);
        }
    }

    void removeAllLocks(uint64_t guid, name user) {

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"bylockowner"}>();
        auto matchingLock = lockIdx.lower_bound(user.value);

        while ( matchingLock != lockIdx.end() ) {
            matchingLock = lockIdx.erase(matchingLock);
        }
    }

    boolean entityIsLocked(uint64_t guid, uint128_t entityGuid) {

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(entityGuid);

        return (matchingLock != lockIdx.end() && matchingLock->guid == entityGuid);
    }

    boolean entityIsLockedByUser(uint64_t guid, uint128_t entityGuid, name user) {

        lock_index locks(_self, guid);

        auto lockIdx = locks.template get_index<name{"byguid"}>();
        auto matchingLock = lockIdx.lower_bound(entityGuid);

        return (matchingLock != lockIdx.end() && matchingLock->guid == entityGuid && matchingLock->lockOwner == user);
    }

    // -------- TABLE Worksapce --------

    TABLE workspace {
        uint64_t id;
        string name;
        string description;
        eosio::name owner;
        eosio::name newowner;

        uint64_t primary_key() const { return id; }
    };

    typedef multi_index<name{"workspace"}, workspace>
        workspace_index;

    // -------- TABLE Membership --------

    TABLE membership {
        uint64_t id;
        name inviter;
        name user;
        uint8_t status;
        string key;

        uint64_t primary_key() const { return id; }

        uint64_t get_user() const { return user.value ; }       
    };

    typedef multi_index<name{"membership"}, membership,
            indexed_by < name{"byuser"}, const_mem_fun < membership, uint64_t, &membership::get_user> > >
        membership_index;

    // -------- TABLE Messages --------

    TABLE message {
        uint64_t id;
        uint128_t msgID;
        name author;
        string text;
        uint64_t timestamp;
        string mimeType;

        uint64_t primary_key() const { return id ; }

        uint128_t get_msgID() const { return msgID; } 
    };

    typedef multi_index< name{"messages"}, message,
            indexed_by < name{"bymsgid"}, const_mem_fun < message, uint128_t, &message::get_msgID> > >
        message_index;

    // -------- TABLE Message Receipts --------

    TABLE messageReceipt {
        uint64_t id;
        uint128_t msgID;
        name user;
        uint64_t timestamp;

        uint64_t primary_key() const { return id ; }

        uint128_t get_msgID() const { return msgID ; }
    };

    typedef multi_index< name{"msgreceipts"}, messageReceipt,
            indexed_by < name{"bymsgid"}, const_mem_fun < messageReceipt, uint128_t, &messageReceipt::get_msgID> > >
        messageReceipt_index;

    // -------- TABLE Files --------

    TABLE file {
        uint64_t id;
        uint128_t fileID;
        uint128_t parentID;
        uint128_t versionID;
        std::vector <uint128_t> parentVersions;
        name uploader;
        name lockOwner;
        uint64_t timestamp;
        uint8_t status;
        string metadata;

        uint64_t primary_key() const { return id; }

        uint128_t get_fileID() const { return fileID; }
    };

    typedef eosio::multi_index<name{"files"}, file,
            indexed_by < name{"byfileid"}, const_mem_fun < file, uint128_t, &file::get_fileID> > >
        file_index;

    // -------- TABLE File Receipts --------

    TABLE fileReceipt {
        uint64_t id;
        uint128_t fileID;
        uint128_t versionID;
        name user;
        uint64_t timestamp;

        uint64_t primary_key() const { return id; }

        uint128_t get_fileID() const { return fileID; }
    };

    typedef eosio::multi_index<name{"filereceipts"}, fileReceipt,
            indexed_by < name{"byfileid"}, const_mem_fun < fileReceipt, uint128_t, &fileReceipt::get_fileID> > >
        fileReceipt_index;

    // -------- TABLE File Tags --------

    TABLE fileTag {
        uint64_t id;
        uint128_t fileID;
        uint128_t versionID;
        uint64_t scope;
        string value;

        uint64_t primary_key() const { return id; }

        uint128_t get_fileID() const { return fileID; }

        uint128_t get_versionID() const { return versionID; }
    };

    typedef eosio::multi_index<name{"filetags"}, fileTag,
            indexed_by < name{"byfileid"}, const_mem_fun < fileTag, uint128_t, &fileTag::get_fileID> >,
            indexed_by<name{"byverid"}, const_mem_fun < fileTag, uint128_t, &fileTag::get_versionID> > >
        fileTag_index;

    // -------- TABLE Permissions --------

    TABLE permission {
        uint64_t id;
        name permissionType;
        name user;
        string scope;

        uint64_t primary_key() const { return id; }

        uint128_t get_permType_user() const {
            uint128_t key = permissionType.value;
            key = key << 64 | user.value;
            return key;
        }

        uint64_t get_user() const { return user.value; }
    };

    typedef eosio::multi_index<name{"permissions"}, permission,
            indexed_by < name{"byuser"}, const_mem_fun < permission, uint64_t, &permission::get_user> >,
            indexed_by<name{"bypermuser"}, const_mem_fun < permission, uint128_t, &permission::get_permType_user> > >
        permission_index;

    // -------- TABLE Locks --------

    TABLE lock {
        uint64_t id;
        uint128_t guid;
        name lockOwner;

        uint64_t primary_key() const { return id; }

        uint128_t get_guid() const { return guid; }

        uint64_t get_lockOwner() const { return lockOwner.value; }
    };

    typedef eosio::multi_index<name{"locks"}, lock,
            indexed_by < name{"byguid"}, const_mem_fun < lock, uint128_t, &lock::get_guid> >,
            indexed_by < name{"bylockowner"}, const_mem_fun < lock, uint64_t, &lock::get_lockOwner> > >
        lock_index;

};

EOSIO_DISPATCH( container, (create)(update)(invite)(accept)(decline)
        (remove)(lockmember)(unlockmember)(addmessage)(ackmessage)(addfile)(removefile)
        (ackfile)(addtag)(removetag)(lockfile)(unlockfile)(lockver)(unlockver)(addperm)
        (removeperm)(addperms)(removeperms)(offerowner)(acceptowner)(rescindowner)
        (destroy) )
