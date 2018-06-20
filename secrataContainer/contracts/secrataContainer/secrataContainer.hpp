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
    public:
        container(account_name self) : contract(self) {}

        void create(account_name owner,
                    uint64_t guid,
                    string workspaceName,
                    string workspaceDescription,
                    string key);

        void update(account_name user,
                    uint64_t guid,
                    string workspaceDescription);

        // -------- Membership --------

        void invite(account_name inviter,
                    account_name invitee,
                    uint64_t guid,
                    string key);

        void accept(account_name invitee,
                    uint64_t guid);

        void decline(account_name invitee,
                     uint64_t guid);

        void remove(account_name remover,
                    account_name member,
                    uint64_t guid);

        // -------- Messages --------

        void addmessage(account_name author,
                        uint64_t guid,
                        string message,
                        string mimeType);

        void ackmessage(account_name user,
                        uint64_t guid,
                        uint128_t msgID);

        // -------- Files --------

        void addfile(account_name uploader,
                     uint64_t guid,
                     uint128_t parentID,
                     uint128_t fileID,
                     uint128_t versionID,
                     std::vector <uint128_t> ancestorVersionIDs,
                     string fileMetadata);

        void removefile(account_name remover,
                        uint64_t guid,
                        uint128_t fileID,
                        uint128_t versionID);

        void ackfile(account_name user,
                     uint64_t guid,
                     uint128_t fileID,
                     uint128_t versionID);

        void lockfile(account_name user,
                      uint64_t guid,
                      uint128_t fileID);

        void unlockfile(account_name user,
                        uint64_t guid,
                        uint128_t fileID);

        void addtag(account_name user,
                    uint64_t guid,
                    uint128_t fileID,
                    uint128_t versionID,
                    boolean isPublic,
                    string value);

        void removetag(account_name user,
                       uint64_t guid,
                       uint128_t fileID,
                       uint128_t versionID,
                       boolean isPublic, string value);

        // -------- Permissions --------

        void addperm(account_name target,
                     uint64_t guid,
                     string permName,
                     uint8_t value);

        void removeperm(account_name target,
                        uint64_t guid,
                        string permName,
                        uint8_t value);

    private:

        boolean workspaceExists(uint64_t guid);

        boolean userIsMemberOfWorkspace(account_name user, uint64_t guid, boolean isActive);

        boolean fileExistsInWorkspace(uint128_t fileID, uint64_t guid);

        boolean fileVersionExistsInWorkspace(uint128_t fileID, uint128_t versionID, uint64_t guid);


        //@abi table
        struct workspace {
            uint64_t id;
            string name;
            string description;
            account_name owner;

            uint64_t primary_key() const { return id; }

            EOSLIB_SERIALIZE(workspace, (id)(name)(description)(owner)
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
        indexed_by < N(byverid), const_mem_fun < fileTag, uint128_t, &fileTag::get_versionID> > >
        fileTag_index;

        //@abi table
        struct permission {
            uint64_t id;
            account_name user;
            string name;
            uint8_t value;

            uint64_t primary_key() const { return id; }

            account_name get_user() const { return user; }

            EOSLIB_SERIALIZE(permission, (id)(user)(name)(value)
            )
        };

        typedef eosio::multi_index<N(permissions), permission,
                indexed_by < N(byuser), const_mem_fun < permission, account_name, &permission::get_user> > >
        permission_index;
    };

}
