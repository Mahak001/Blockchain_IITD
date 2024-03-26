// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Grade{
    uint256 public total;

    function enterMarks(uint256 math,uint256 hindi,uint256 english,uint256 sst,uint256 science)
    public virtual returns (uint256){
        require(math<=100&& english<=100);
    }

}
