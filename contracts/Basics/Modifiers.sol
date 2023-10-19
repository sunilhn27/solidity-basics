// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract MyContract {
    uint256 data = 20;

    function getData() public view returns (uint256) {
        return data;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
