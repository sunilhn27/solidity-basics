// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Stud {
    struct Student {
        string name;
        uint256 rollNumber;
        bool pass;
    }

    Student public s1;

    function insert(
        string memory _name,
        uint256 _rollNumber,
        bool _pass
    ) public {
        s1 = Student(_name, _rollNumber, _pass);
        //   s1.name =_name;
        //   s1.rollNumber=_rollNumber;
        //   s1.pass=pass;
    }

    function getStudents() public view returns (Student memory) {
        return s1;
    }

    function getStudentName() public view returns (string memory) {
        return s1.name;
    }
}
