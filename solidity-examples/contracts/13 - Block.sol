// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BlockInfo {
    // returns the remaining gas amount
    function getBlockHash() public view returns (bytes32) {
        return blockhash(12345);
    }

    function getBlockNumber() public view returns (uint){
        return block.number;
    }
    
    function getBlockTimestamp() public view returns (uint){
        return block.timestamp;
    }
}