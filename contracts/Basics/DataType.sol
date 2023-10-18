// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract DataTypes {
    string public name = "Sunil H N";
    bool public isEnabled;
    uint256 public age; //only positive values
    int256 public value = -5; // accepts negative values
    int256 public interger;
    address public addr = 0x1234567890123456789012345678901234567890;
    enum Days {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday
    }
    //Arrays
    uint256[] dynamicArray; //no length
    uint256[4] fixedArray = [1, 2, 3, 4];

    //struct. similar to object
    struct Person {
        string name;
        uint256 age;
    }

    //Events are used to log data into the Ethereum transaction log.

    event Log(uint256 value);

    function setValue(uint256 newValue) public {
        emit Log(newValue);
    }

    //A key-value data structure that associates keys with values.

    //Mapping
    mapping(address => uint256) public balances;

    //Functions can be used as types in Solidity.

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}