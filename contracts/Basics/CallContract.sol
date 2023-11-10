// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;


contract OtherContract{
    
      uint public _x =1;
    event Log(uint amt ,uint gas);

      function getX()external view returns (uint x){
        return x = _x;
      }

      function setX(uint x) external payable {
        _x =x;
        if(msg.value >0){
          emit Log(msg.value ,gasleft());
        }
      }
}

contract CallContract{

    OtherContract oc =new OtherContract();

   function setXvalue(uint _x)external payable {
     oc.setX(_x);
   }
   
   function getXvalue() external returns (uint x){
      oc =new OtherContract();
     return oc.getX();
   }
    
}
