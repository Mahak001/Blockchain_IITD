/*Simple Voting system Objective:develop a contract named SimpleVote that allows 
users to vote for a  "Yes" or "No" decision on a single issue. 
Implement two counters, one for "Yes" votes and one for "No" votes.
Create a function to cast a vote, updating the respective counter based on 
the user's choice. Ensure that each Ethereum address can vote only once.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVote {
    uint256 public yes;
    uint256 public no;
    mapping(address => bool) public hasVoted;

    function castVote(bool _vote) external {
        require(!hasVoted[msg.sender], "You have already voted");
        if (_vote) {
            yes++;
        } else {
            no++;
        }
        hasVoted[msg.sender] = true;
    }
}
