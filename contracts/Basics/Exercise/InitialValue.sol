// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Values {
    bool public _bool; // false
    string public _string; // ""
    int256 public _int; // 0
    uint256 public _uint; // 0
    address public _address; // 0x0000000000000000000000000000000000000000

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet public _enum; // first element 0

    function fi() internal {} // internal blank function

    function fe() external {} // external blank function
}
