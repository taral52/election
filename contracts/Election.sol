pragma solidity ^0.4.11;

contract Election {
	
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	mapping(uint => Candidate) public candidates; 

	uint public candidatesCount;

	function Election() public {
		// This code will be executed when this contract is migrated and deployed.
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string _name) private {
		candidatesCount++; 
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

}