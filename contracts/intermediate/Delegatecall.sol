// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

// Target contract C
contract A {
    uint256 public num;
    address public sender;

    function setVars(uint256 _num) public payable {
        num = 2+_num;
        sender = msg.sender;
    }

    function getVals() public view returns (uint256 _num) {
        return _num = num;
    }
}

contract B {
    uint256 public num;
    address public sender;

    event Log(bool success, bytes data);

    // Calling setVars() of contract C with delegatecall, the state variables of contract B will be changed
    function delegatecallSetVars(address _addr, uint256 _num) external payable {
        // delegatecall setVars()
        (bool success, bytes memory data) = _addr.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
        emit Log(success, data);
    }
}
