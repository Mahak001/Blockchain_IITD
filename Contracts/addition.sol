// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract addition{
    uint sum;
    function add(uint a, uint b) public{
        sum = a+b;
    }

    function get() public view returns(uint){
        return sum;
    }
}