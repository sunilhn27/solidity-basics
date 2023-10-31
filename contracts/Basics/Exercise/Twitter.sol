// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Twitter {
    struct Tweet {
        uint256 id;
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }
    mapping(address => Tweet[]) public tweets;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "YOU ARE NOT THE OWNER!");
        _;
    }

    function createTweet(string memory _tweet) public {
        Tweet memory newTweet = Tweet({
            id: tweets[msg.sender].length,
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet); //tuple(address,string,uint256,uint256): 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB ,This is my First Tweet ,1698694948, 0
    }

    function getTweet(address _address, uint256 id) external view returns (Tweet memory) {
        return tweets[_address][id];
    }

    function likeTweet(address author, uint256 id) external {
        //require(tweets[author][id].id == id, "TWEET DOES NOT EXIST");
        tweets[author][id].likes++;
    }

    function unlikeTweet() external {}

    function getAllTweet(address _address) external view returns (Tweet[] memory){
        return tweets[_address];
    }
}
