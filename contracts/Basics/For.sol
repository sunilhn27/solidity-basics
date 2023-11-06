// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract ForLoopExample {


    function sumArray(uint256[] memory numbers)external pure returns (uint256){
        uint256 total = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }

        return total;
    }
}
