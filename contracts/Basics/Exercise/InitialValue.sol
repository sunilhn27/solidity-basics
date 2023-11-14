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

    // reference types
    uint256[8] public _staticArray; // a static array which all members set to their default values[0,0,0,0,0,0,0,0]
    uint256[] public _dynamicArray; // `[]`
    mapping(uint256 => address) public _mapping; // a mapping which all members set to their default values
    // a struct which all members set to their default values 0, 0
    struct Student {
        uint256 id;
        uint256 score;
    }
    Student public student;

    function fi() internal {} // internal blank function

    function fe() external {} // external blank function

    bool public _bool2 = true;

    function d() external {
        delete _bool2; // delete will make _bool2 change to default(false)
    }
}
