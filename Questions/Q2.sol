/*Constract a contract with a function calculate that takes
two uint256 parameters. Inside this function,declare a local 
variable result that calculate the multiplication of these 
parameter and return the result*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract multiplication{
    function Calculate(uint256 a,uint256 b) public pure returns(uint256){
        uint256 result=a*b;
        return result;
    }
}
