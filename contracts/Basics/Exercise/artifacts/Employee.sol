// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract EmployeeContract {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    struct Employee {
        uint256 id;
        string name;
        uint16 age;
    }

    mapping(address => Employee[]) emp;

    modifier OnlyOwner() {
        require(msg.sender == owner, "Only owner can create Employee");
        _;
    }

    function CreateEmployee(string memory _name, uint16 _age)external OnlyOwner{
        Employee memory emp1 = Employee(0, _name, _age);
        emp[msg.sender].push(emp1);
    }

    function getEmployee(address add, uint16 _id) external view returns (string memory){
        uint256 totalEmpCount = emp[msg.sender].length;
        for (uint16 i = 0; i < totalEmpCount; i++) {
            if (emp[add][i].id == _id) {
                return emp[add][i].name;
            }
        }
        return "Employee not found";
    }
}
