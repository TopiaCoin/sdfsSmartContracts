#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>
#include <string>

using namespace eosio;

using std::string;

typedef uint8_t boolean;
typedef uint64_t nodeid_t;
typedef uint64_t containerid_t;
typedef uint64_t disputeid_t;

CONTRACT smsc : public eosio::contract {

public:
    using contract::contract;

	// -------- Node Management Methods --------

    ACTION stakenode ( nodeid_t nodeid, 
    	string url, 
    	uint64_t chainCapacity,
    	uint64_t replicationCapacity,
    	name registeringAccount, 
    	name operatingAccount) {

    }

    ACTION unstakenode (nodeid_t nodeid) {

    }

    ACTION withdraw ( nodeid_t nodeid ) {

    }

    ACTION refund ( nodeid_t nodeid ) {

    }

    // -------- Blockchain and Data Replication Methods --------

    ACTION create ( containerid_t containerID,
    	uint64_t capacity,
    	uint8_t nodeCount,
    	name owningAccount ) {

    }

    ACTION transfer ( containerid_t containerID,
    	name newOwningAccount ) {

    }

    ACTION extend ( containerid_t containerID ) {

    }

    ACTION setrepl ( containerid_t containerID, 
    	uint8_t nodeCount ) {

    }

    ACTION terminate ( containerid_t containerID ) {

    }

    ACTION setproof ( containerid_t containerID,
    	nodeid_t nodeID,
    	string solutionHash) {

    }

    ACTION solveproof ( containerid_t containerID, 
    	nodeid_t nodeID,
    	string solution ) {

    }

    // -------- Dispute Resolution Methods --------

    ACTION filedispute (containerid_t containerID,
    	nodeid_t nodeID,
    	string chainURL,
    	std::vector<string> disputedChunkIDs ) {

    }

    ACTION ruledispute ( disputeid_t disputeID,
    	nodeid_t nodeID,
    	string decision ) {

    }

private:

	// -------- Helper Methods --------

	void increaseReplication ( containerid_t containerID, 
    	uint8_t nodeCount ) {

    }
	void decreaseReplication ( containerid_t containerID, 
    	uint8_t nodeCount ) {

    }


	// -------- TABLE Node Registrations --------

	TABLE nodeRegistration {
		nodeid_t nodeID;
		string nodeURL;
		uint64_t registrationDate;
		uint64_t stakedTokens;
		name registeringAccount;
		name operatingAccount;
		uint64_t lastContactDate;

		uint64_t primary_key() const { return nodeID ; }
	} ;

	typedef eosio::multi_index <name{"nodes"}, nodeRegistration>
		nodeRegistration_index;

	// -------- TABLE Node Resources --------

	TABLE nodeResources {
		nodeid_t nodeID;
		uint64_t maxChains;
		uint64_t maxData;
		uint64_t curChains;
		uint64_t curData;

		uint64_t primary_key() const { return nodeID; }

		uint64_t get_CurChains() const { return curChains; }
	};

	typedef eosio::multi_index < name{"nodersrcs"}, nodeResources,
		indexed_by < name{"bycurchains"}, const_mem_fun < nodeResources, uint64_t, &nodeResources::get_CurChains > > >
		nodeResources_index;

	// -------- TABLE Stake Refund --------

	TABLE stakeRefund {
		nodeid_t nodeID;
		name account;
		uint64_t requestTime;
		uint64_t amount;

		uint64_t primary_key() const { return nodeID ; }

		uint64_t get_requestTime() const { return requestTime ; }
	};

	typedef eosio::multi_index < name{"stakerefund"}, stakeRefund,
		indexed_by < name{"byreqtime"}, const_mem_fun < stakeRefund, uint64_t, &stakeRefund::get_requestTime > > >
		stakeRefund_index;

	// -------- TABLE Container Registration --------

	TABLE container {
		containerid_t containerID;
		uint64_t expirationTime;
		uint64_t capacity;
		name owningAccount;

		uint64_t primary_key() const { return containerID ; }
	} ;

	typedef multi_index < name{"containers"}, container >
		containers_index;

	// -------- TABLE Container Assignments --------

	TABLE containerAssignment {
		containerid_t containerID;
		nodeid_t nodeID;
		string solutionHash;
		uint64_t solutionHashDate;
		uint64_t lastSuccessfulSolutionDate;

		uint64_t primary_key() const { return containerID ; }

		uint64_t get_nodeID() const { return nodeID ; }
	} ;

	typedef multi_index < name{"assignments"}, containerAssignment,
		indexed_by < name{"bynodeid"}, const_mem_fun < containerAssignment, uint64_t, &containerAssignment::get_nodeID > > >
		containerAssignment_index;

	// --------- TABLE Token Accounting --------

	TABLE tokenAccounting {
		name account ;
		uint64_t balance ;

		uint64_t primary_key() const { return account.value ; }
	} ;

	typedef multi_index < name{"tokenaccount"}, tokenAccounting >
		tokenAccounting_index;

	// -------- TABLE Disputes --------

	TABLE dispute {
		disputeid_t disputeID;
		containerid_t containerID;
		nodeid_t nodeID;
		string chainURL;
		std::vector<string> disputedChunkIDs;

		uint64_t primary_key() const { return disputeID ; }

		uint64_t get_byContainerID() const { return containerID ; } 

		uint64_t get_byNodeID() const { return nodeID ; }
	} ;

	typedef multi_index < name{"disputes"}, dispute,
		indexed_by < name{"bycontainer"}, const_mem_fun < dispute, uint64_t, &dispute::get_byContainerID > >,
		indexed_by < name{"bynode"}, const_mem_fun < dispute, uint64_t, &dispute::get_byNodeID > > >
		dispute_index;
} ;

EOSIO_DISPATCH( smsc, 
	(stakenode)(unstakenode)(withdraw)(refund)
	(create)(transfer)(extend)(setrepl)(terminate)
	(setproof)(solveproof)(filedispute)(ruledispute) )


