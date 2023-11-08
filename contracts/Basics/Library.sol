// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


library ReusableFunctions{
    
    function add() external pure returns (uint){
        return 5+5;
    }
}


contract Matchs{

 function sub() public pure returns (uint){
        return 5 - 2;
    }   


 function add() public pure returns (uint){
    return ReusableFunctions.add();

}
}