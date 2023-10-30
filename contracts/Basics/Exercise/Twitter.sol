// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Twitter {


    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }
    mapping(address => Tweet[]) public tweets;

    function createTweet(string memory _content) public {
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _content,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet);//tuple(address,string,uint256,uint256): 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB ,This is my First Tweet ,1698694948, 0
    } //tuple(address,string,uint256,uint256)[]: 0x617F2E2fD72FD9D5503197092aC168c91465E7f2,This is my second Tweet,1698695062,0,0x617F2E2fD72FD9D5503197092aC168c91465E7f2,This is my second Tweet 1,1698695084,0

   function getTweet(address _address ,uint256 id) external view returns (Tweet memory){
         return  tweets[_address][id];
   }

   function getAllTweet(address _address) external view returns (Tweet[] memory){
         return  tweets[_address];
   }


}
