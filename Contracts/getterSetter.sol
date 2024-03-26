// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract getterSetter{
    uint a;
    function set_a(uint a1) public {
        a=a1;
    }
    function get_a() public view returns (uint){
        return a;
    }
}