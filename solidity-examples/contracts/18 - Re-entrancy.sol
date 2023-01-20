// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Reentrancy Guard
contract ReEntrancyGuard {
    /// @dev Lock variable.
    bool internal locked;

    /// @dev NonReentrant error. Thrown when reentrancy is detected.
    error NonReentrant();

    modifier noReentrant() {
        if (locked) revert NonReentrant();
        locked = true;
        _;
        locked = false;
    }

    /// @notice Non reentrant function.
    /// @dev Throws when reentered.
    function safeFunction() public noReentrant {
        (bool success, ) = msg.sender.call("");
        require(success, "call failed");
    }
}