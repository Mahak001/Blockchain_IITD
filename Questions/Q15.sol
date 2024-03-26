/*Problem Statement 4: Simple Authentication System
Objective: Create a contract SimpleAuth for a basic user authentication system.
•	Define a mapping to associate Ethereum addresses with a boolean indicating whether the address is "registered" or not.
•	Implement a function that allows an address to register itself (setting its associated boolean to true).
•	Include a function that checks if an address is registered.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract simpleAuth{
    mapping (address=>bool) public isRegistered;
    function register()public {
        isRegistered[msg.sender]=true;
    }

    function checkRegisteration(address _user) public view returns (bool){
        return isRegistered[_user];
    }

    function check()public view returns (string memory){
        require(isRegistered[msg.sender]==true,"You are not registered");
        return "You are registered";
    }
}

