// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract conditionalStatement{
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner{
        require(owner==msg.sender,"You are not an admin");_;
    }
    function eligibity(uint256 ageyear) public view onlyOwner returns(string memory){
        uint256 result;
        result=2024-ageyear;
        if (result>=18){
            return ("You are eligible for voting");
        }
        else {
            return("You are not eligible for voting");
        }
    }
}