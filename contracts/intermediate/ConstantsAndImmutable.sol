// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract ConstantsAndImmutable {
    address public constant ADDRESS =0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    string public constant TOKEN = "SUN";
    uint256 public constant TOTAL_SUPPLY = 1000;
    uint256 public constant DECIMAL = 1235;
    bytes constant CONSTANT_BYTES = "WTF";

    address public immutable ADDRESS_1;
    uint256 public immutable BALANCE;
    uint256 public immutable TOKEN_COUNT;

    constructor() {
        ADDRESS_1 = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        BALANCE = address(this).balance;
        TOKEN_COUNT = setTokenCount();
    }

    function setTokenCount() public pure returns (uint256) {
        uint256 a = 6;
        return a;
    }
}
