// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mappingDemo{
    mapping (uint=>string)
    public e_ID;
    function setValue() public {
        e_ID[16]="Jyoti";
        e_ID[20]="Ishita";
        e_ID[25]="Roshan";
    }
}