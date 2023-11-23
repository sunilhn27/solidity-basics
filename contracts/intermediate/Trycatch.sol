// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract TryCatch {
    constructor(uint256 a) {
        require(a != 0, "A is Zero");
        assert(a != 1);
    }

    function myFun(uint256 b) public pure returns (bool succ) {
        require(b % 2 == 0, "Not even");
        succ = true;
    }
}

contract OnlyEven {
    TryCatch public trycatch;
    event successMsg(string data);
    event catchMsg(string data);

    function checkEven(uint256 c) public returns (bool succ) {
        try trycatch.myFun(c) returns (bool success) {
            emit successMsg("success msg");
            return success;
        } catch {
            emit catchMsg("data");
        }
    }
}
