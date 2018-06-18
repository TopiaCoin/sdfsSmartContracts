const char* const secrataContainer_abi = R"=====(
{
	"types": [{
		"new_type_name": "account_name",
		"type": "name"
	}],
	"structs": [{
			"name": "createAction",
			"base": "",
			"fields": [
				{"name": "owner", "type": "account_name"},
				{"name": "guid", "type": "uint128"},
				{"name": "workspaceName", "type": "string"},
				{"name": "workspaceDescription", "type": "string"},
				{"name": "key", "type": "string"}
			]
		}, {
			"name": "updateAction",
			"base": "",
			"fields": [
				{"name": "user", "type": "account_name"},
				{"name": "guid", "type": "uint128"},
				{"name": "workspaceDescription", "type": "string"}
			]
		}, {
			"name": "inviteAction",
			"base": "",
			"fields": [
				{"name": "inviter", "type": "account_name"},
				{"name": "invitee", "type": "account_name"},
				{"name": "guid", "type": "uint128"},
				{"name": "key", "type": "string"}
			]
		}, {
			"name": "acceptAction",
			"base": "",
			"fields": [
				{"name": "invitee", "type": "account_name"},
				{"name": "guid", "type": "uint128"}
			]
		}, {
			"name": "declineAction",
			"base": "",
			"fields": [
				{"name": "invitee", "type": "account_name"},
				{"name": "guid", "type": "uint128"}
			]
		}, {
			"name": "removeAction",
			"base": "",
			"fields": [
				{"name": "remover", "type": "account_name"},
				{"name": "removee", "type": "account_name"},
				{"name": "guid", "type": "uint128"}
			]
		},

		{
			"name": "workspaceRow",
			"base": "",
			"fields": [
				{"name": "id", "type": "uint64"},
				{"name": "guid", "type": "uint128"},
				{"name": "name", "type": "string"},
				{"name": "description", "type": "string"},
				{"name": "owner", "type": "account_name"}
			]
		},
		{
		    "name": "membershipRow",
		    "base": "",
		    "fields": [
				{"name": "id", "type": "uint64"},
				{"name": "guid", "type": "uint128"},
				{"name": "user", "type": "account_name"},
				{"name": "status", "type": "uint8"},
				{"name": "key", "type": "string"}
		    ]
		}
	],
	"actions": [{
			"name": "create",
			"type": "createAction"
		},
		{
			"name": "update",
			"type": "updateAction"
		},
		{
			"name": "invite",
			"type": "inviteAction"
		},
		{
			"name": "accept",
			"type": "acceptAction"
		},
		{
			"name": "decline",
			"type": "declineAction"
		},
		{
			"name": "remove",
			"type": "removeAction"
		}

	],
	"tables": [{
        "name": "workspaces",
        "index_type": "i64",
        "key_names": [
            "guid"
        ],
        "key_types": [
            "uint128"
        ],
        "type": "workspaceRow"
    },{
        "name": "membership",
        "index_type": "i64",
        "key_names": [
          "guid",
          "user"
        ],
        "key_types": [
          "uint128",
          "account_name"
        ],
        "type": "membershipRow"
    }],
	"ricardian_clauses": []
}
)=====";
