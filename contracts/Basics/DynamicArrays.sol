// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract DynamicArrays {
   uint256[] public arr = [1, 2, 5, 6, 5];

    function dynamicLoop() public view returns (uint256) {
        uint256 data;
        for (uint256 i = 0; i < arr.length; i++) {
            data += arr[i];
        }
        return data;
    }
}
