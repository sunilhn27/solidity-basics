// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Car {
    string private name;

    constructor(string memory _name) {
        name = _name;
    }

    function getCar() external pure returns (string memory) {
        return "Car";
    }
}

contract Bus {
    string private name;

    constructor(string memory _name) {
        name = _name;
    }

    function getBus() external pure returns (string memory) {
        return "Bus";
    }
}

contract Vechicle is Car, Bus("Bus") {

   constructor() Car("Car") {
    }

   function getVechicle() public pure returns  (string memory){
    return "Vechicle";
   }

}
