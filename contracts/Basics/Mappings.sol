// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


contract Mappings{


    mapping (uint=>string) public data;

   function insertData(uint _rollNumber ,string memory _name) public {
     data[_rollNumber]=_name;
   }


   function getData(uint _rollNumber) public view returns (string memory){
       return data[_rollNumber];
   }

}