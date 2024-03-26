// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//modifier
contract check{
    modifier checkNum(uint num){
        require(num%2==0,"Number is odd");_;

    }
    function oddEven(uint num) public pure checkNum(num) returns(string memory){
        return "even";
    }
}