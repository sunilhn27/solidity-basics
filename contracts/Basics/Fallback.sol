// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Fallback{


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