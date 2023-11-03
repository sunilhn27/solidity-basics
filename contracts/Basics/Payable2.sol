// SPDX-License-Identifier: GPL-3.0


pragma solidity ^0.8.0;

contract PayableRecieve {


  function getEth(address payable receiver)external payable {
      receiver.transfer(msg.value);
  }


  function getBalance(address _address) external view returns (uint256){
        return _address.balance;
    }    
}