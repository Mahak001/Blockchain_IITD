// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery{
    address public manager;
    address payable [] public participants;

    constructor(){
        manager=msg.sender;
    }

    receive() external payable {
        require(msg.value==1 ether,"Amount should be one ether");
        participants.push(payable (msg.sender));
     }

    function getBalance() public view returns (uint){
        require(manager==msg.sender,"not owner");
        return address(this).balance;
    }

    function random() public view returns (uint){
        return uint(keccak256(abi.encode(block.difficulty, block.timestamp,participants.length)));
    }

    function selectWinner() public {
        require(manager==msg.sender,"not owner");
        require(participants.length>=3);
        address payable winner;
        uint r=random();
        uint index =r%participants.length;
        winner =participants[index];
        address payable vijeta =winner;
        winner.transfer(getBalance());
        participants=new address payable [](0);
    }
}