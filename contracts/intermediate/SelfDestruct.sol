// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract SelfDestruct{
 
    uint public value =10;

    constructor() payable {}

    receive() external payable { }

    function selfDestrct()external {
    selfdestruct(payable(msg.sender));
    }

    function getbalance() public view returns (uint bal){
        bal= address(this).balance;
    }

}