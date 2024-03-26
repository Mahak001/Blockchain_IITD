/*Develop a contract with two state variable counter A and counter B,
both initiatized to 0. Implement functions increament A and Decrement B that result
increment counter A by 1 and  drcrement counter B by 1*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract iD{
    int A =0;
    int B =0;

    function increment() public returns (int){
        A=A++;
        return A;
    }
    function decrement() public returns (int){
        B=B--;
        return B;
    }
}