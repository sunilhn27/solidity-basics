// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract OtherContract1 {
    uint256 private _x = 0; // state variable x
    // Receiving ETH event, log the amount and gas
    event Log(uint256 amount, uint256 gas);

    fallback() external payable {}

    receive() external payable {}

    // get the balance of the contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // set the value of _x, as well as receiving ETH (payable)
    function setX(uint256 x) external payable {
        _x = x;
        // emit Log event when receiving ETH
        if (msg.value > 0) {
            emit Log(msg.value, gasleft());
        }
    }

    // read the value of x
    function getX() external view returns (uint256 x) {
        x = _x;
    }
}

contract CallingFun {
    event Response(bool success, bytes data);

    function callSetX(address payable _addr, uint256 x) public payable {
        // call setX()，and send ETH
        (bool success, bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("setX(uint256)", x)
        );

        emit Response(success, data);
    }

    function callGetX(address _addr) external returns(uint256){
    // call getX()
    (bool success, bytes memory data) = _addr.call(abi.encodeWithSignature("getX()"));

    emit Response(success, data); //emit event 
    return abi.decode(data, (uint256));
}
}
