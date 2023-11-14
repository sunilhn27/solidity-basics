// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Errors {
    address payable public owner;

    error TransferNotOwner();

    function errorFunction() external view {
        if (msg.sender != owner) {
            revert TransferNotOwner();
        }
    }

    function assertFunction() external view {
        assert(msg.sender != owner);
    }

    function requireFunction() external view {
        require(msg.sender != owner, "Sending is not Owner");
    }
}
