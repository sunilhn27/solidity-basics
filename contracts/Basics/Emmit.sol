// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Emmit {
    struct User {
        string name;
        uint256 age;
    }
    mapping(address => User) usr;

    event userCreated(string _name, uint256 _age);

    function addUser(string memory _name, uint256 _age) public {
        User memory u1 = User(_name, _age);
        usr[msg.sender] = u1;
        emit userCreated(_name, _age);
    }

    function getUsers(address _add) external view returns (User memory) {
        return usr[_add];
    }
}
