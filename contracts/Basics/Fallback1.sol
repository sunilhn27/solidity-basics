// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Fallback {


   event log(string name);

    fallback() external payable { //receives ETH
        emit log("fallback");
    }

    receive() external payable { 
        emit log("receive");
    }

    function getbal () public view returns (uint256){
        return address(this).balance;
    }

}