// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract MethodReturns {

      // returning multiple variables
    function returnMultiple() public pure returns(uint256, bool, uint256[3] memory){
            return(1, true, [uint256(1),2,5]);
        }


        // named returns. We can indicate the name of the return variables in returns, so that solidity automatically initializes these variables, and automatically returns the values of these functions without adding the return keyword.
    function returnNamed() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        _number = 2;
        _bool = false; 
        _array = [uint256(3),2,1];
        (_number, _bool, _array) = returnNamed();
        //(, _bool, ) = returnNamed();
    }    


    function returnNamed2() public pure returns(uint256 _number){
        //bool _bool = true;
        //string memory _str = '0xAA';       
        _number = 2;
    }
}
