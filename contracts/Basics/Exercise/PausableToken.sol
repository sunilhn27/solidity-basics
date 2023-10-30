// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;



contract MyPausableToken{
   address public owner;
   bool public paused;
   mapping(address =>uint) public balance;

   constructor(){
    owner =msg.sender;
    paused =false;
    balance[owner]=1000;
   }


   modifier OnlyOwner(){
    require(msg.sender==owner,"You are not the Owner"); 
    _;
   }

   modifier notPaused(){
    require(!paused,"Contract is paused"); 
    _;
   }

   function pause() public view OnlyOwner{
       paused ==true;   
   }

   function unPaused() public view OnlyOwner{
    paused ==false;   

   }

   function transferMoney(address _to ,uint _amt) public notPaused{
    require(balance[msg.sender]>= _amt,"Insufficient balance");
    balance[msg.sender] -=_amt;
    balance[_to]+=_amt;

   }



}
