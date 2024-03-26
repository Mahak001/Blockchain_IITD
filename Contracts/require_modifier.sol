// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract requireModifier 
    {   address public malik; 
        constructor(){ 
        malik = msg.sender; 
        } 
    
    modifier sirfMaalik{ 
        require(malik == msg.sender, "Maalik ko Bulao"); _; 
        } 
        
    modifier uthaLeReBaba{ 
        require(malik != msg.sender, "Maalik ko Bulao"); _; 
    } 
    
    function f1() public view uthaLeReBaba returns (string memory) {
         return "hello i am f1"; 
         } 
    
    function f2() public view uthaLeReBaba returns (string memory) { 
        return "hello i am f2"; 
        } 
        
    function f3() public view sirfMaalik returns (string memory) { 
        return "hello i am f3"; 
        } 
        
    function f4() public view sirfMaalik returns (string memory) { 
        return "hello i am f3";
        }
        
}