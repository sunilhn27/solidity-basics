// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

interface Repair {
    function repairCar() external returns (string memory);

    function repairBus() external returns (string memory);

    function repairBike() external returns (string memory);
}

contract Vechicle is Repair {
    function repairCar() external pure returns (string memory) {
        return "Repair Car done";
    }

    function repairBus() external pure returns (string memory) {
        return "Repair Bus done";
    }

    function repairBike() external pure returns (string memory) {
        return "Repair Bike done";
    }
}
