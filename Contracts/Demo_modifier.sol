// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demoModifier{
    address public owner = msg.sender;
    modifier onlyOwner(){
        require(msg.sender==owner,"not owner");_;
    }
    function change(address _new) public onlyOwner{
        owner=_new;
    }
}