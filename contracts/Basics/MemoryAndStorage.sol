// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract StorageAndMemory {
    uint256[3] public arr = [10, 20, 30];

    function fmemory() public view {
        uint256[3] memory arr1 = arr;  //create new arry in memory
        arr1[0] = 100;
    }

    function fStorage() public{
        uint256[3] storage arr2 = arr; ///pointer to arr array
        arr2[0] = 100;
    }
}
