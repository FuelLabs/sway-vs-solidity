// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Event {
    event Log(uint num, string message);

    function logger() public {
        emit Log(42, "Hello World!");
    }
}