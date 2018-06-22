/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eosiolib/eosio.hpp>
#include <eosiolib/multi_index.hpp>
#include <string>

namespace secrataContainer {

    using std::string;
    using eosio::indexed_by;
    using eosio::const_mem_fun;

    typedef uint8_t boolean;

    class container : public eosio::contract {

    private:
        struct userPermission {
            string permName;
            string scope;
        };

    public:
        container(account_name self) : contract(self) {}

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
        void create(account_name owner,
                    uint64_t guid,
                    string workspaceName,
                    string workspaceDescription,
                    string key);

        /**
         * Updates the description of a workspace.  In order to update the
         * workspace description, the user must either be the owner of the
         * workspace, or have been granted the 'updatewks' permission.
         *
         * @param user The user who is changing the workspace description.
         * @param guid The unique identifier of the workspace whose description is being changed.
         * @param workspaceDescription The new description to be assigned to the workspace.
         */
        void update(account_name user,
                    uint64_t guid,
                    string workspaceDescription);

        /**
         * Offer ownership of a workspace to another member.  The newowner
         * must be an existing member of the workspace.  This method can only
         * be invoked by the current owner of the workspace.
         *
         * @param guid The unique identifier of the workspace whose ownership is being offered.
         * @param newowner The account name of the member who is being offered ownership of the workspace.
         */
        void offerowner(uint64_t guid,
                        account_name newowner);

        /**
         * Accept the offer of ownership for a workspace.  This method can
         * only be invoked by the user who has been offered ownership.  Once
         * invoked, the user becomes the new owner of the workspace.
         *
         * @param guid  The unique identifier of the workspace whose ownership is being accepted.
         */
        void acceptowner(uint64_t guid);

        /**
         * Rescind the offer of ownership for a workspace.  This method can
         * only be invoked by the user who offered ownership.  Once invoked,
         * the user who was offered ownership can no longer accept ownership.
         *
         * @param guid The unique identifier of the workspace whose ownership offer is being rescinded.
         */
        void rescindowner(uint64_t guid);

        /**
         * Destorys a workspace and all of its content.  All members are removed
         * from the workspace.  All files, tags, and file receipts are removed.
         * All messages and message receipts are removed.  All locks and permissions
         * are removed.
         *
         * @param guid The unique identifier of the workspace that is being destroyed.
         */
        void destroy(uint64_t guid);

        // -------- Membership --------

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
        void invite(account_name inviter,
                    account_name invitee,
                    uint64_t guid,
                    string key,
                    std::vector <userPermission> permissions);

        /**
         * Accept an invitation to a workspace.
         *
         * @param invitee The account name of the user who is accepting the invitation.
         * @param guid The unique identifier of the workspace whose invite is being accepted.
         */
        void accept(account_name invitee,
                    uint64_t guid);

        /**
         * Declines an invitation to a workspace.
         *
         * @param invitee The account name of the user who is declining the invitation.
         * @param guid The unique identifier of the workspace whose invite is being declined.
         */
        void decline(account_name invitee,
                     uint64_t guid);

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
        void remove(account_name remover,
                    account_name member,
                    uint64_t guid);

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
        void lockmember(account_name locker,
                        account_name lockee,
                        uint64_t guid);

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
        void unlockmember(account_name locker,
                          account_name lockee,
                          uint64_t guid);

        // -------- Messages --------

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
        void addmessage(account_name author,
                        uint64_t guid,
                        string message,
                        string mimeType);

        /**
         * Acknowledges a message in the a workspace.  The user must be an active
         * member of the workspace.
         *
         * @param user The account name of the user who is acknowledging the message.
         * @param guid The unique identifier of the workspace containing the acknowledged message.
         * @param msgID The unique identifier of the message being acknowledged.
         */
        void ackmessage(account_name user,
                        uint64_t guid,
                        uint128_t msgID);

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
        void addfile(account_name uploader,
                     uint64_t guid,
                     uint128_t parentID,
                     uint128_t fileID,
                     uint128_t versionID,
                     std::vector <uint128_t> ancestorVersionIDs,
                     string fileMetadata);

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
        void removefile(account_name remover,
                        uint64_t guid,
                        uint128_t fileID,
                        uint128_t versionID);

        /**
         * Acknowledges a file version.  The user must be an active member of the workspace.
         *
         * @param user The account name of the user who is acknowledging a file version.
         * @param guid The unique identifier of the workspace in which the file version resides.
         * @param fileID The unique identifier of the file whose version is being acknowledged.
         * @param versionID The unique identifier of the version of the that is being acknowledged.
         */
        void ackfile(account_name user,
                     uint64_t guid,
                     uint128_t fileID,
                     uint128_t versionID);

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
        void lockfile(account_name user,
                      uint64_t guid,
                      uint128_t fileID);

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
        void lockver(account_name user,
                     uint64_t guid,
                     uint128_t fileID,
                     uint128_t versionID);

        /**
         * Unlocks a locked file in a workspace.  The user must be an
         * active member of the workspace and either be the current holder
         * of the file lock, or be the owner of the workspace.
         *
         * @param user The account name of the user who is unlocking the file.
         * @param guid The unique identifier of the workspace in which the file exists.
         * @param fileID The unique identifier of the file that is being unlocked.
         */
        void unlockfile(account_name user,
                        uint64_t guid,
                        uint128_t fileID);

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
        void unlockver(account_name user,
                       uint64_t guid,
                       uint128_t fileID,
                       uint128_t versionID);

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
        void addtag(account_name user,
                    uint64_t guid,
                    uint128_t fileID,
                    uint128_t versionID,
                    boolean isPublic,
                    string value);

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
        void removetag(account_name user,
                       uint64_t guid,
                       uint128_t fileID,
                       uint128_t versionID,
                       boolean isPublic,
                       string value);

        // -------- Permissions --------

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
        void addperm(account_name user,
                     account_name target,
                     uint64_t guid,
                     string permName,
                     string scope);

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
        void removeperm(account_name user,
                        account_name target,
                        uint64_t guid,
                        string permName,
                        string scope);

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
        void addperms(account_name user,
                      account_name target,
                      uint64_t guid,
                      std::vector <userPermission> permissions);

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
        void removeperms(account_name user,
                         account_name target,
                         uint64_t guid,
                         std::vector <userPermission> permissions);


    private:

        boolean workspaceExists(uint64_t guid);

        boolean userIsMemberOfWorkspace(account_name user, uint64_t guid, boolean isActive);

        boolean fileExistsInWorkspace(uint128_t fileID, uint64_t guid);

        boolean fileVersionExistsInWorkspace(uint128_t fileID, uint128_t versionID, uint64_t guid);

        account_name getOwner(uint64_t guid);

        boolean userHasPermission(uint64_t guid, account_name user, uint64_t permType);

        boolean userHasPermission(uint64_t guid, account_name user, uint64_t permType, uint128_t scope);

        boolean userHasPermission(uint64_t guid, account_name user, uint64_t permType, account_name scope);

        boolean userHasPermission(uint64_t guid, account_name user, uint64_t permType, string scope);

        boolean userOwnsWorkspace(uint64_t guid, account_name user);

        boolean internalAddPerm(account_name user,
                                account_name target,
                                uint64_t guid,
                                string permName,
                                string scope);

        boolean internalRemovePerm(account_name user,
                                   account_name target,
                                   uint64_t guid,
                                   string permName,
                                   string scope);

        void removeAllUserPermissions(uint64_t guid, account_name user);

        void removeAllLocks(uint64_t guid, account_name user);

        boolean entityIsLocked(uint64_t wsGuid, uint128_t entityGuid);

        boolean entityIsLockedByUser(uint64_t wsGuid, uint128_t entityGuid, account_name user);


        //@abi table
        struct workspace {
            uint64_t id;
            string name;
            string description;
            account_name owner;
            account_name newowner;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE(workspace, (id)(name)(description)(owner)(newowner)
            )
        };

        typedef eosio::multi_index<N(workspaces), workspace>
                workspace_index;

        //@abi table
        struct membership {
            uint64_t id;
            account_name inviter;
            account_name user;
            uint8_t status;
            string key;

            uint64_t primary_key() const { return id; }

            account_name get_user() const { return user; }

            EOSLIB_SERIALIZE(membership, (id)(inviter)(user)(status)(key)
            )
        };

        typedef eosio::multi_index<N(membership), membership,
                indexed_by < N(byuser), const_mem_fun < membership, account_name, &membership::get_user> > >
        membership_index;

        //@abi table
        struct message {
            uint64_t id;
            uint128_t msgID;
            account_name author;
            string text;
            uint64_t timestamp;
            string mimeType;

            uint64_t primary_key() const { return id; }

            uint128_t get_msgID() const { return msgID; }

            EOSLIB_SERIALIZE(message, (id)(msgID)(author)(text)(timestamp)(mimeType)
            )
        };

        typedef eosio::multi_index<N(messages), message,
                indexed_by < N(bymsgid), const_mem_fun < message, uint128_t, &message::get_msgID> > >
        message_index;

        //@abi table
        struct messageReceipt {
            uint64_t id;
            uint128_t msgID;
            account_name user;
            uint64_t timestamp;

            uint64_t primary_key() const { return id; }

            uint128_t get_msgID() const { return msgID; }

            EOSLIB_SERIALIZE(messageReceipt, (id)(msgID)(user)(timestamp)
            )
        };

        typedef eosio::multi_index<N(msgreceipts), messageReceipt,
                indexed_by < N(bymsgid), const_mem_fun < messageReceipt, uint128_t, &messageReceipt::get_msgID> > >
        messageReceipt_index;

        //@abi table
        struct file {
            uint64_t id;
            uint128_t fileID;
            uint128_t parentID;
            uint128_t versionID;
            std::vector <uint128_t> parentVersions;
            account_name uploader;
            account_name lockOwner;
            uint64_t timestamp;
            uint8_t status;
            string metadata;

            uint64_t primary_key() const { return id; }

            uint128_t get_fileID() const { return fileID; }

            EOSLIB_SERIALIZE(file, (id)(fileID)(parentID)(versionID)(parentVersions)(uploader)(lockOwner)(timestamp)(
                    status)(metadata)
            )
        };

        typedef eosio::multi_index<N(files), file,
                indexed_by < N(byfileid), const_mem_fun < file, uint128_t, &file::get_fileID> > >
        file_index;

        //@abi table
        struct fileReceipt {
            uint64_t id;
            uint128_t fileID;
            uint128_t versionID;
            account_name user;
            uint64_t timestamp;

            uint64_t primary_key() const { return id; }

            uint128_t get_fileID() const { return fileID; }

            EOSLIB_SERIALIZE(fileReceipt, (id)(fileID)(versionID)(user)(timestamp)
            )
        };

        typedef eosio::multi_index<N(filereceipts), fileReceipt,
                indexed_by < N(byfileid), const_mem_fun < fileReceipt, uint128_t, &fileReceipt::get_fileID> > >
        fileReceipt_index;

        //@abi table
        struct fileTag {
            uint64_t id;
            uint128_t fileID;
            uint128_t versionID;
            uint64_t scope;
            string value;

            uint64_t primary_key() const { return id; }

            uint128_t get_fileID() const { return fileID; }

            uint128_t get_versionID() const { return versionID; }

            EOSLIB_SERIALIZE(fileTag, (id)(fileID)(versionID)(scope)(value)
            )
        };

        typedef eosio::multi_index<N(filetags), fileTag,
                indexed_by < N(byfileid), const_mem_fun < fileTag, uint128_t, &fileTag::get_fileID> >,
        indexed_by<N(byverid), const_mem_fun < fileTag, uint128_t, &fileTag::get_versionID> > >
        fileTag_index;

        //@abi table
        struct permission {
            uint64_t id;
            uint64_t permissionType;
            account_name user;
            string scope;

            uint64_t primary_key() const { return id; }

            uint128_t get_permType_user() const {
                uint128_t key = permissionType;
                key = key << 64 | user;
                return key;
            }

            account_name get_user() const { return user; }

            EOSLIB_SERIALIZE(permission, (id)(permissionType)(user)(scope)
            )
        };

        typedef eosio::multi_index<N(permissions), permission,
                indexed_by < N(byuser), const_mem_fun < permission, account_name, &permission::get_user> >,
        indexed_by<N(bypermuser), const_mem_fun < permission, uint128_t, &permission::get_permType_user> > >
        permission_index;

        //@abi table
        struct lock {
            uint64_t id;
            uint128_t guid;
            account_name lockOwner;

            uint64_t primary_key() const { return id; }

            uint128_t get_guid() const { return guid; }

            account_name get_lockOwner() const { return lockOwner; }

            EOSLIB_SERIALIZE(lock, (id)(guid)(lockOwner)
            )
        };

        typedef eosio::multi_index<N(locks), lock,
                indexed_by < N(byguid), const_mem_fun < lock, uint128_t, &lock::get_guid> >,
        indexed_by<N(bylockowner), const_mem_fun < lock, account_name, &lock::get_lockOwner> > >
        lock_index;
    };

}
