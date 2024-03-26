//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Factorial {
    function factorial (uint256 number) public pure returns(uint256) {
        if (number == 0 || number == 1) {
            return 1;
            } 

        else {
            uint256 fact = 1;
            for (uint256 i = 2; i <= number; i ++) {
            fact *= i;
            }
            return fact; 
            }
    }
}