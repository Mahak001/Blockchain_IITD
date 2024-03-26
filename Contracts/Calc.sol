// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calc{
    function addNum(uint a,uint b) public pure returns(uint){
        return a+b;
    }

    function subNum(uint a,uint b) public pure returns(uint){
        return a-b;
    }

    function mulNum(uint a,uint b) public pure returns(uint){
        return a*b;
    }

    function didNum(uint a, uint b) public pure returns(uint){
        return a/b;
    }
}