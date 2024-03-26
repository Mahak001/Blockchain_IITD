/*Construct a contract with a string variable greeting initialized to "Hello".

Implement a function concatenateString that appends "World" to the greeting variable 

and returns the updated string.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GreetingContract {
    string public greeting = "Hello";

    function concatenateString() public view returns (string memory) {
        string memory result = string(abi.encodePacked(greeting, " World"));
        return result;
    }
}
