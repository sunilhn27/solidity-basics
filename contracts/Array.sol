// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;


contract MyArray{



    uint[5] public arr =[10,20,30,40,50];

    

    function setArray(uint index ,uint data) public {
            arr[index]=data; 
    }

    function getArray(uint index) public view returns (uint ){
        return arr[index];
    }

    function getAllArryElements() public view returns(uint[5] memory){
        return arr;
    } 

}