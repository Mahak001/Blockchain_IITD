/*Develop a contract with a function check number that takes a

uint256 parameter within this funtion,use an if statement to check if the number

is even or odd and return a corresponding string massage*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract check{
    function checkNumber(uint256 num) public pure returns (string memory){
        if(num%2==0){
            return "Number is Even";
        }

        else{
            return "Number is NOT even";
        }
    }
}