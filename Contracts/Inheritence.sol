// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A {
    //Parent Contract

    uint256 public a = 10;

    function fun1() public pure returns (string memory) {
        return "We are in Contract A";
    }

    function fun2() public pure returns (string memory) {
        return "We are in Contract A";
    }

    function fun3() public pure virtual returns (string memory) {
        return "We are in Contract A";
    }

    function fun4() public pure virtual returns (string memory) {
        return "We are in Contract A";
    }
}

contract B is A //child contract
{
    function fun3() public pure override returns (string memory) {
        return "We are in Contract B";
    }

    function fun4() public pure virtual override returns (string memory) {
        return "We are in Contract B";
    }
}

contract C is B //child contract
{
    function fun4() public pure virtual override returns (string memory) {
        return "We are in Contract c";
    }
}

contract D is C //child contract
{
    function fun4() public pure override returns (string memory)
    {
        return "We are in ContractD";
}
}