// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.8;

contract Overloading {
    function getName(string memory _name) public pure returns (string memory, uint256){
        return (_name, 1);
    }

    function getName() public pure returns (string memory) {
        return ("Sunil");
    }

    function getName(uint _a) public pure returns (uint) {
        return _a;
    }

}
