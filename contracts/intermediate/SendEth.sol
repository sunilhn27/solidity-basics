// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


contract ReceiveETH1 {
    // Receiving ETH event, log the amount and gas
    event Log(uint amount,  uint gas);
    
    // receive() is executed when receiving ETH
    receive() external payable{
        emit Log(msg.value,  gasleft());
    }
    
    // return the balance of the contract
    function getBalance() view public returns(uint) {
        return address(this).balance;
    }
}

contract SendETH {

    // constructor, make it payable so we can transfer ETH at deployment
    constructor() payable{}
    // receive() function, called when receiving ETH
    receive() external payable{}

    // sending ETH with transfer()
    function transferETH(address payable _to,  uint256 amount) external payable{
    _to.transfer(amount);
}

// send
// Usage: receiverAddress.send(value in Wei).
// The gas limit of send() is 2300, which is enough to make transfer, but not if the receiving contract has a gas consuming fallback() or receive().
// If send() fails, the transaction will be reverted.
// The return value of send() is bool, which is the status of the transaction, you can choose to act on that.

// sending ETH with send()
function sendETH(address payable _to,  uint256 amount) external payable{
    // check result of send()，revert with error when failed
    bool success = _to.send(amount);
    if(!success){
        //revert SendFailed();
    }
}

}