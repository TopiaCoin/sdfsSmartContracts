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
                    uint128_t guid,
                    string workspaceName,
                    string workspaceDescription,
                    string key);

        void update(account_name user,
                    uint128_t guid,
                    string workspaceDescription);

        // -------- Membership --------

        void invite(account_name inviter,
                    account_name invitee,
                    uint128_t guid,
                    string key);

        void accept(account_name invitee,
                    uint128_t guid);

        void decline(account_name invitee,
                     uint128_t guid);

        void remove(account_name remover,
                    account_name member,
                    uint128_t guid);

        // -------- Messages --------

        void addMessage(account_name author,
                        uint128_t guid,
                        string message);

        void ackMessage(account_name user,
                        uint128_t guid,
                        uint128_t msgID);

        // -------- Files --------

        void addFile(account_name uploader,
                     uint128_t guid,
                     uint128_t parentID,
                     uint128_t fileID,
                     uint128_t versionID,
                     uint128_t ancestorVersionID,
                     string fileMetadata);

        void removeFile(account_name remover,
                        uint128_t guid,
                        uint128_t parentID,
                        uint128_t fileID,
                        uint128_t versionID);

        void ackFile(account_name user,
                     uint128_t guid,
                     uint128_t fileID,
                     uint128_t versionID);

        // -------- Permissions --------

        void setPerm(account_name target,
                     string permName,
                     uint8_t value);

    private:

        boolean workspaceExists(uint128_t guid);

        boolean userIsMemberOfWorkspace(account_name user, uint128_t guid);

        //@abi table
        struct workspace {
            uint64_t id;
            uint128_t guid;
            string name;
            string description;
            account_name owner;

            uint64_t primary_key() const { return id; }

            uint128_t get_guid() const { return guid; }

            EOSLIB_SERIALIZE(workspace, (id)(guid)(name)(description)(owner)
            )
        };

        typedef eosio::multi_index<N(workspaces), workspace,
                indexed_by < N(byguid), const_mem_fun < workspace, uint128_t, &workspace::get_guid> > >
        workspace_index;

        //@abi table
        struct membership {
            uint64_t id;
            uint128_t guid;
            account_name user;
            uint8_t status;
            string key;

            uint64_t primary_key() const { return id; }

            uint128_t get_guid() const { return guid; }

            account_name get_user() const { return user; }

            EOSLIB_SERIALIZE(membership, (id)(guid)(user)(status)(key)
            )
        };

        typedef eosio::multi_index<N(membership), membership,
                indexed_by < N(byguid), const_mem_fun < membership, uint128_t, &membership::get_guid> >,
                indexed_by<N(byuser), const_mem_fun < membership, account_name, &membership::get_user> > >
        membership_index;

        //@abi table
        struct message {
            uint64_t id;
            uint128_t guid;
            uint128_t msgID;
            account_name author;
            string text;
            uint64_t timestamp;
            string mimeType;

            uint64_t primary_key() const { return id; }

            uint128_t get_guid() const { return guid; }

            uint128_t get_msgID() const { return msgID; }

            EOSLIB_SERIALIZE(message, (id)(guid)(msgID)(author)(text)(timestamp)(mimeType)
            )
        };

        typedef eosio::multi_index<N(messages), message,
                indexed_by < N(byguid), const_mem_fun < message, uint128_t, &message::get_guid> >,
        indexed_by<N(bymsgid), const_mem_fun < message, uint128_t, &message::get_msgID> > >
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
            uint128_t guid;
            uint128_t fileID;
            uint128_t parentID;
            uint128_t versionID;
            uint128_t *parentVersions;
            uint64_t timestamp;
            uint8_t status;
            string metadata;

            uint64_t primary_key() const { return id; }

            uint128_t get_guid() const { return guid; }

            uint128_t get_fileID() const { return fileID; }

            EOSLIB_SERIALIZE(file, (id)(guid)(fileID)(parentID)(versionID)(parentVersions)(timestamp)(status)(metadata)
            )
        };

        typedef eosio::multi_index<N(files), file,
                indexed_by < N(byguid), const_mem_fun < file, uint128_t, &file::get_guid> >,
        indexed_by<N(byfileid), const_mem_fun < file, uint128_t, &file::get_fileID> > >
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
            string scope;
            string name;

            uint64_t primary_key() const { return id; }

            uint128_t get_fileID() const { return fileID; }

            uint128_t get_versionID() const { return versionID; }

            EOSLIB_SERIALIZE(fileTag, (id)(fileID)(versionID)(scope)(name)
            )
        };

        typedef eosio::multi_index<N(filetags), fileTag,
                indexed_by < N(byfileid), const_mem_fun < fileTag, uint128_t, &fileTag::get_fileID> > >
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
