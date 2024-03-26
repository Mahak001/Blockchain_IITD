// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ageCalculator{
    function ageCal(uint birthyear) public pure returns(uint){
        return 2024-birthyear;
    }
}