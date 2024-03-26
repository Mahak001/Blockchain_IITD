// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint public x=10;
    uint private y=20;
    uint internal z=30;

    function fun1() private pure returns(string memory){
        return "Private function";
    }

    function fun2() internal  pure returns(string memory){
        return "Internal function";
    }

    function fun3() external  pure returns(string memory){
        return "External function";
    }

    function fun4() public  pure returns(string memory){
        return "Public function";
    }

    function check() public  pure returns(string memory){
        return fun4();
    }
}

contract B is A{
    string public q=fun4();
}

contract C{
    A obj=new A();
    string public v=obj.fun3();
}