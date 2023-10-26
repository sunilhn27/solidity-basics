// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract demo {


    
    modifier isEven(uint a) {
        require(a % 2 == 0, "a is not even");
        _;
    }

    function f1(uint a) public pure isEven(a) returns(bool) {
        return true;
    }
}