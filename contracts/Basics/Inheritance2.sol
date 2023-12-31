// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Vechicle {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    function getWheel() external pure virtual returns (uint256) {
        return 0;
    }
}

contract Car is Vechicle {

    constructor() Vechicle("Car") {}

    function getWheel() public pure override  returns (uint256) {
        return 4;
    }

       function getcolor() public pure   returns (string memory) {
        return "red";
    }
}

contract Bus is Vechicle{

    constructor() Vechicle("Bus"){}

    function getWheel() public pure override returns (uint256) {
        return 6;
    }
    
}


contract Truck is Vechicle{

    constructor() Vechicle("Truck"){}

    function getWheel() public pure override returns (uint256) {
        return 8;
    }
    
}
