// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ElectionCheck{ 
    function checkAge(int x)public pure returns(string memory){ 
        int ans=2024-x; 
        if(ans>=18){
             return "Eligible for vote"; 
        } 
        else if(ans<18&&ans>0){ 
            return "Not Elegible for vote"; 
            } 
        else
        { return "Please enter correct year";
        }
        
    }
}