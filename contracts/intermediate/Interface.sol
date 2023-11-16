// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";


// Interface

// The interface contract is similar to the abstract contract, but it requires no functions are implemented. Rules of the interface:
// Cannot contain state variables.
// Cannot contain constructors.
// Cannot inherit non-interface contracts.
// All functions must be external and cannot have contents in the function body.
// The contract that inherits the interface contract must implement all the functions defined in it.



interface IERC721 is IERC165 {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
    
    function balanceOf(address owner) external view returns (uint256 balance);

    function ownerOf(uint256 tokenId) external view returns (address owner);

    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    function transferFrom(address from, address to, uint256 tokenId) external;

    function approve(address to, uint256 tokenId) external;

    function getApproved(uint256 tokenId) external view returns (address operator);

    function setApprovalForAll(address operator, bool _approved) external;

    function isApprovedForAll(address owner, address operator) external view returns (bool);

    function safeTransferFrom( address from, address to, uint256 tokenId, bytes calldata data) external;
}