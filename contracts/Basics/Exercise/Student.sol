// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Students {
    
    address owner;
    mapping(address => Student[])  stud;

    struct Student {
        string name;
        uint256 rollNumber;
        uint8 age;
        string gender;
    }

    constructor(){
        owner=msg.sender;
    }


    modifier Onlyowner() {
        require(msg.sender == owner, "Only owner can add Students");
        _;
    }

    function createStudents(string memory _name ,uint8 _rollNumber ,uint8 _age ,string memory _gender) external  Onlyowner{
        Student memory stu =Student(_name ,_rollNumber ,_age ,_gender);
        stud[msg.sender].push(stu);
    } 

    function getStudentByRollNumber(address _addr, uint256 _rollNumber) external view returns (Student memory){
        return stud[_addr][_rollNumber];
    }

    function getAllStudents(address _adddress) external view returns (Student[] memory){
        return stud[_adddress];
    }



}
