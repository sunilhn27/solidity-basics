// SPDX-License-Identifier: GPL-3.0


pragma solidity ^0.8.0;

contract Payable {


    function SendEth() external payable {

    }

    function getBalance() external view returns (uint){
        return address(this).balance;
    }
}