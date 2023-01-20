// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Count Tracker
contract Counter {
    /// @notice Returns current count.
    /// @dev Initializes to zero implicitly.
    uint256 public count;

    /// @notice Increments the count.
    function increment() external {
        count += 1;
    }
}