// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MessageInfo {
    // returns the address of the account that calls the function
    function getSender() public view returns (address) {
        address sender = msg.sender;
        return sender;
    }

    // returns the amount of ether sent in the function call
    function getAmount() public payable returns (uint) {
        uint value = msg.value;
        return value;
    }
}