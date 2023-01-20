// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Event Logger
contract Event {
    /// @notice Logged by `logger()`.
    /// @param num Number to log.
    /// @param message Message to log.
    event Log(uint256 num, string message);

    /// @notice Logs `Log`.
    function logger() public {
        emit Log(42, "Hello World!");
    }
}