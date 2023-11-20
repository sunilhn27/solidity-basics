// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


contract ReceiveAndFallback{

// Solidity has two special functions, receive() and fallback(), they are primarily used in two circumstances.

// Receive Ether
// Handle calls to contract if none of the other functions match the given function signature (e.g. proxy contract)
// Note⚠️: Prior to solidity 0.6.x, only fallback() was available, for receiving Ether and as a fallback function.
// After version 0.6, fallback() was separated to receive() and fallback().

// In this tutorial we focus on receiving Ether.

// Receiving ETH Function: receive()
// The receive() function is solely used for receiving ETH. A contract can have at most one receive() function, declared not like others, no function keyword is needed: receive() external payable { ... }. This function cannot have arguments, cannot return anything and must have external visibility and payable state mutability.

// receive() is executed on plain Ether transfers to a contract. You should not perform too much operations in receive(), when sending Ether with send or transfer, only 2300 gas is available, complicated operations will trigger Out of Gas error; instead you should use call function which can specify gas limit. (We will cover all three ways of sending Ether later）.


  // Declare event
    event Received(address Sender,  uint Value); 
    event fallbackCalled(address Sender,  uint Value,  bytes Data); 



    // receive
    receive() external payable {
        emit Received(msg.sender,  msg.value); 
    }
    // fallback
    fallback() external payable{
        emit fallbackCalled(msg.sender,  msg.value,  msg.data); 
    }

}