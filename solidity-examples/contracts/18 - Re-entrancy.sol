// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReEntrancyGuard {
    bool internal locked;

    error NonReentrant();

    modifier noReentrant() {
        if (locked) revert NonReentrant();
        locked = true;
        _;
        locked = false;
    }

    function safeFunction() public noReentrant {
        // do something
    }
}