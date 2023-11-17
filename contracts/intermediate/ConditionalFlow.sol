// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


contract ConditalFlow{


    function ifElseTest(uint256 _number) public pure returns(bool){
    if(_number == 0){
    return(true);
    }else{
    return(false);
    }
}

function forLoopTest() public pure returns(uint256){
    uint sum = 0;
    for(uint i = 0; i < 10; i++){
    sum += i;
    }
    return(sum);
}

function whileTest() public pure returns(uint256){
    uint sum = 0;
    uint i = 0;
    while(i < 10){
    sum += i;
    i++;
    }
    return(sum);
}

function doWhileTest() public pure returns(uint256){
    uint sum = 0;
    uint i = 0;
    do{
    sum += i;
    i++;
    }while(i < 10);
    return(sum);
}

// ternary/conditional operator
function ternaryTest(uint256 x, uint256 y) public pure returns(uint256){
    // return the max of x and y
    return x >= y ? x: y; // if retturns true ans x else y
}

function f ( uint8 _in ) public pure returns ( uint8 out ) { 
 out = _in; 
 } 

function f ( uint256 _in ) public pure returns ( uint256 out ) { 
 out = _in; 
 }

}