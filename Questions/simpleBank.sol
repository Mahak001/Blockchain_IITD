// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract simpleBank{
    mapping (address=>uint) public balance;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function deposit() public payable{
        require(msg.value>0,"Deposit amount be greater than 0");
        balance[msg.sender]+=msg.value;
    }

    function withdraw(uint amount) public {
        require(amount>0,"Withdrawal amount should be greater than 0");
        require(balance[msg.sender]>=amount,"Insufficient Balance");
        balance[msg.sender]-=amount;
        payable (msg.sender).transfer(amount);
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }

}