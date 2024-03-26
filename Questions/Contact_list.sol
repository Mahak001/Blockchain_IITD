/*Problem Statement 1: Basic Contact List
Objective: Create a contract named ContactList that allows users to store and retrieve phone numbers associated with names.
•	Use a struct named Contact to hold a person's name and phone number.
•	Implement a mapping to associate Ethereum addresses with their Contact.
•	Write a function to allow users to add or update their contact information.
•	Include a function to retrieve a user's contact information by their Ethereum address.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContactList {
    
    struct Contact {
        string name;
        string phoneNumber;
    }
    
    mapping(address => Contact) public contacts;
    
    function addContact(string memory _name, string memory _phoneNumber) public {
        contacts[msg.sender] = Contact(_name, _phoneNumber);
    }
    
    function getContact(address _address) public view returns (string memory, string memory) {
        return (contacts[_address].name, contacts[_address].phoneNumber);
    }
}
