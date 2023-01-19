// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    // Initilize the counter
    uint public counter = 0;

    // Function to get the current count
    function count() public view returns (uint) {
        return counter;
    }

    // Function to increment count by 1
    function increment() public {
        counter = counter + 1;
    }
}