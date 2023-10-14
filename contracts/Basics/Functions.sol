// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


contract MyFunctions{


     uint public age=20; 

  
  function add (uint _x , uint _y) private  pure returns(uint){
    return _x +_y;
  }
   

  function setAge(uint value)public view returns(uint){
          return age+value;
  }  

  function getAge ()public view returns(uint){
    return age;
  }


}