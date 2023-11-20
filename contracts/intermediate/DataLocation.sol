// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

// Data location
// There are three types of data storage locations in solidity: storage, memory and calldata. Gas costs are different for different storage locations.

// The data of a storage variable is stored on-chain, similar to the hard disk of a computer, and consumes a lot of gas; while the data of memory and calldata variables are temporarily stored in memory, consumes less gas.

// General usage:

// storage: The state variables are storage by default, which are stored on-chain.

// memory: The parameters and temporary variables in the function generally use memory label, which is stored in memory and not on-chain.

// calldata: Similar to memory, stored in memory, not on-chain. The difference from memory is that calldata variables cannot be modified, and is generally used for function parameters. Example:


contract DataLocation{

    uint[] public x = [1,2,3]; // state variable: array x

    //When storage (a state variable of the contract) is assigned to the local storage (in a function), a reference will be created, and changing value of the new variable will affect the original one. Example:
    function fStorage() public{
        //Declare a storage variable xStorage, pointing to x. Modifying xStorage will also affect x
        uint[] storage xStorage = x;
        xStorage[0] = 100;
    }
 
    //Assigning storage to memory creates independent copies, and changes to one will not affect the other; and vice versa. Example:
    function fMemory() public view{
        //Declare a variable xMemory of Memory, copy x. Modifying xMemory will not affect x
        uint[] memory xMemory = x;
        xMemory[0] = 100;
    }

    function fCalldata(uint[] calldata _x) public pure returns(uint[] calldata){
        //The parameter is the calldata array, which cannot be modified.
        //_x[0] = 0; //This modification will report an error.
        return(_x);
    }

       function fmemory(uint[] memory _x) public pure returns(uint[] memory){
        //The parameter is the calldata array, which cannot be modified.
        _x[0] = 0; //This modification is allowed
        return(_x);
    }
 }