// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Mapping{

    mapping(uint => address) public idToAddress; // id maps to address
    mapping(address => address) public swapPair; // mapping of token pairs, from address to address


      // define a struct
      struct Student{
          uint256 id;
          uint256 score;
      }
      
//      mapping(Student => uint) public testVar; throws compile time error

//Rules of mapping

//Rule 1: The _KeyType should be selected among default types in solidity such as uint, address, etc. No custom struct can be used. However, _ValueType can be any custom types. The following example will throw an error, because _KeyType uses a custom struct:
// Rule 2: The storage location of the mapping must be storage: it can serve as the state variable or the storage variable inside function. But it can't be used in arguments or return results of public function.
// Rule 3: If the mapping is declared as public then Solidity will automatically create a getter function for you to query for the Value by the Key.
// Rule 4：The syntax of adding a key-value pair to a mapping is _Var[_Key] = _Value, where _Var is the name of the mapping variable, and _Key and _Value correspond to the new key-value pair. For example:

// Principle of mapping

// Principle 1: The mapping does not store any key information or length information.
// Principle 2: Mapping use keccak256(key) as offset to access value.
// Principle 3: Since Ethereum defines all unused space as 0, all key that are not assigned a value will have an initial value of 0.

}