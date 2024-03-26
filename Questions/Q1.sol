/* Create a solidity contract that maintence a state variable 
counter intialization to 50. Implement a function that increments this
counter by a provided value and another function to retrieve 
the current value of the counter*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract counterContract{
    uint256 public counter =50;

    function incrementCounter(uint256 _value) external {
        counter +=_value;
    }

    function getCounterValue() external view returns(uint256){
        return counter;
    }
}