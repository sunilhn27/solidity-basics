// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract ReceiveETH1 {
    // Receiving ETH event, log the amount and gas
    event Log(uint256 amount, uint256 gas);

    // receive() is executed when receiving ETH
    receive() external payable {
        emit Log(msg.value, gasleft());
    }

    // return the balance of the contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendETH {
    // constructor, make it payable so we can transfer ETH at deployment
    constructor() payable {}

    // receive() function, called when receiving ETH
    receive() external payable {}

    // send
    // Usage: receiverAddress.send(value in Wei).
    // The gas limit of send() is 2300, which is enough to make transfer, but not if the receiving contract has a gas consuming fallback() or receive().
    // If send() fails, the transaction will be reverted.
    // The return value of send() is bool, which is the status of the transaction, you can choose to act on that.

    // sending ETH with send()
    function sendETH(address payable _to, uint256 amount) external payable {
        // check result of send()，revert with error when failed
        bool success = _to.send(amount);
        if (!success) {
            revert ("Failed send eth fun");
        }
    }

    //call
    // Usage: receiverAddress.call{value: value in Wei}("").
    // There is no gas limit for call(), so it supports more operations in fallback() or receive() of the receiving contract.
    // If call() fails, the transaction will not be reverted.
    // The return value of call() is (bool, data), in which bool is the status of transaction, you can choose to act on that.
    // sending ETH with call()
    function callETH(address payable _to, uint256 amount) external payable {
        // check result of call()，revert with error when failed
        (bool success, ) = _to.call{value: amount}("");
        if (!success) {
            revert ("Failed Call eth fun");
        }
    }

    //transfer
    // Usage: receiverAddress.transfer(value in Wei).
    // The gas limit of transfer() is 2300, which is enough to make transfer, but not if the receiving contract has a gas consuming fallback() or receive().
    // If transfer() fails, the transaction will revert.
    // Sample code: note that _to is the address of ReceiveETH contract, and amount is the value you want to send.

    // sending ETH with transfer()
    function transferETH(address payable _to, uint256 amount) external payable {
        _to.transfer(amount);
    }
}
