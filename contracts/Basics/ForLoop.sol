// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


contract ForLoopExample {
    
    uint256[] public numbers;

    constructor() {
        numbers.push(1);
        numbers.push(2);
        numbers.push(3);
        numbers.push(4);
        numbers.push(5);
    }

    function sumNumbers() public view returns (uint256) {
        uint256 sum = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }

        return sum;
    }
}