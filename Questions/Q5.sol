/*Develop a contract with two uint256 variables numA and numB. 

Create a function addNumbers that takes these variables as parameters, 

performs addition, and returns the result.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Add {
    function addNumbers(uint256 numA, uint256 numB) public pure returns (uint256) {
        return numA + numB;
    }
}
