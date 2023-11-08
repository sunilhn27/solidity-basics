// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


abstract contract Repair{

    string private name;

    constructor(string memory _name){
        name =_name;
    }

    function repairIphone(string memory _name) external pure virtual  returns (string memory);


    function repairAndroidPhone(string memory _name) external pure virtual  returns (string memory);


    function repairBasicPhone(string memory _name) external pure  returns (string memory){
        return _name;
    }

}

contract MobileRepair is Repair{

    constructor() Repair("Repair me"){}

    function repairIphone(string memory _name) external pure override  returns (string memory){
        return _name;
    }

     function repairAndroidPhone(string memory _name) external pure override  returns (string memory){
        return _name;
    }



}