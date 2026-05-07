// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract VortexGov {
    IERC20 public governanceToken;
    
    struct Proposal {
        string description;
        uint256 forVotes;
        uint256 againstVotes;
        bool active;
        mapping(address => bool) hasVoted;
    }

    Proposal[] public proposals;

    constructor(address _token) {
        governanceToken = IERC20(_token);
    }

    function createProposal(string calldata _desc) external {
        Proposal storage newProposal = proposals.push();
        newProposal.description = _desc;
        newProposal.active = true;
    }

    function vote(uint256 _id, bool _support) external {
        Proposal storage p = proposals[_id];
        require(p.active, "Proposal closed");
        require(!p.hasVoted[msg.sender], "Already voted");

        uint256 weight = governanceToken.balanceOf(msg.sender);
        require(weight > 0, "No voting power");

        if (_support) p.forVotes += weight;
        else p.againstVotes += weight;

        p.hasVoted[msg.sender] = true;
    }
}
