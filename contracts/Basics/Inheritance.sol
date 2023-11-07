// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


// Base contract
contract Animal {
    string public species;
    
    constructor(string memory _species) {
        species = _species;
    }

    function speak() public pure virtual  returns (string memory) {
        return "Animal sound";
    }
}

contract Dog is Animal {
    constructor() Animal("Dog") {
    }

    function speak() public pure override  returns (string memory) {
        return "Woof!";
    }
}

// Derived contract inheriting from Animal
contract Cat is Animal {
    constructor() Animal("Cat") {
    }

    function speak() public pure override returns (string memory) {
        return "Meow!";
    }
}