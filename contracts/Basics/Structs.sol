// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

contract Structs {
    struct Employee {
        string name;
        uint256 age;
        address adds;
    }

    Employee public emp;

    Employee[] public emps;

    function initializeEmployee(
        string memory _name,
        uint256 _age,
        address _adds
    ) public {
        emp.name = _name;
        emp.age = _age;
        emp.adds = _adds;
    }

    function setEmployee(
        string memory _name,
        uint256 _age,
        address _adds
    ) public {
        Employee memory newEmployee;
        newEmployee.name = _name;
        newEmployee.age = _age;
        newEmployee.adds = _adds;

        emps.push(newEmployee);
    }

    function updateEmployee(
        uint256 index,
        string memory _name,
        uint256 _age,
        address _adds
    ) public {
        require(index < emps.length, "Employee index out of range");
        Employee storage employee = emps[index];
        employee.name = _name;
        employee.age = _age;
        employee.adds = _adds;
    }

    function getEmployee(uint256 index) public view returns (string memory, uint256, address) {
        require(index < emps.length, "Employee index out of range");
        Employee storage employee = emps[index];
        return (employee.name, employee.age, employee.adds);
    }
}
