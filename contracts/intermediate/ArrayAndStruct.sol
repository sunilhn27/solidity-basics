// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract StructTypes {
    struct Student {
        uint256 id;
        uint256 score;
    }
    Student public student;

    function initStudent() external {
        student.id = 100;
        student.score = 200;
        Student storage _student = student;
        _student.id = 300;
        _student.score = 400;
    } // answer is 300 400
}
