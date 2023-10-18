// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract MyContract {
    uint256 public data;

    function getData() public view returns (uint256) {
        return data;
    }
}