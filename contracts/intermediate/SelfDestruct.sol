// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract SelfDestruct{

//  The selfdestruct operation is the only way to delete a smart contract and the remaining Ether stored at that address is sent to a designated target.
// The selfdestruct operation is designed to deal with the extreme case of contract errors. Originally the opcode was named suicide but the Ethereum community decided to rename it
// as selfdestruct because suicide is a heavy subject and we should make every effort possible to not affect the programmer who suffer from depression.

  
 
    uint public value =10;

    constructor() payable {}

    receive() external payable { }

    function selfDestrct()external {
    selfdestruct(payable(msg.sender));
    }

    function getbalance() public view returns (uint bal){
        bal= address(this).balance;
    }

}