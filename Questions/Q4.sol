/*Create a Solidity contract that maintains state variables name (string), 

age (uint256), and isActive (bool) for a person. 

Implement functions to update and retrieve these attributes.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonContract {
    string public name;
    uint256 public age;
    bool public isActive;

    function createPerson(string memory _name, uint256 _age, bool _isActive) public {
        name = _name;
        age = _age;
        isActive = _isActive;
    }

    function updatePerson(string memory _newName, uint256 _newAge, bool _newIsActive) public {
        name = _newName;
        age = _newAge;
        isActive = _newIsActive;
    }
}
