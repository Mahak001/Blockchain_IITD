// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringConcatenation {
    
    function concatenateStrings(string memory _str1, string memory _str2) public pure returns (string memory) {
        return string(abi.encodePacked(_str1, _str2));
    }
}

