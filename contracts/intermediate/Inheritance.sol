// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Grandfather {
    event Log(string msg);

    // Apply inheritance to the following 3 functions: hip(), pop(), man()，then log "Grandfather".
    function hip() public virtual{
        emit Log("Grandfather");
    }

    function pop() public virtual{
        emit Log("Grandfather");
    }

    function grandfather() public virtual {
        emit Log("Grandfather");
    }
}

contract Father is Grandfather{
    // Apply inheritance to the following 2 functions: hip() and pop()，then change the log value to "Father".
    function hip() public virtual override{
        emit Log("Father");
    }

    function pop() public virtual override{
        emit Log("Father");
    }

    function father() public virtual{
        emit Log("Father");
    }
}


contract Son is Grandfather, Father{
    // Apply inheritance to the following 2 functions: hip() and pop()，then change the log value to "Son".
    function hip() public virtual override(Grandfather, Father){
        emit Log("Son");
    }
          // define a struct
      struct Student{
          uint256 id;
          uint256 score;
      }
      
      mapping(uint=> Student) public testVar; //correct
      //mapping(Student => uint) public testVar1; //wrong
      
    function pop() public virtual override(Grandfather, Father) {
        emit Log("Son");
    }

}