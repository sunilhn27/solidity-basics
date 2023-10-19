// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract WhileLoop {
    uint256 public counter;

    // Function to demonstrate a while loop
    function incrementCounter(uint256 _n) public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 1;

        while (i <= _n) {
            sum += i;
            i++;
        }

        return sum;
    }
}
