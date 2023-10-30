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
        tweets[msg.sender].push(newTweet);
    }

   function getTweet(address _address ,uint256 id) external view returns (Tweet memory){
         return  tweets[_address][id];
   }

   function getAllTweet(address _address) external view returns (Tweet[] memory){
         return  tweets[_address];
   }


}
