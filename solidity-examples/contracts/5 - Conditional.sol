// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Conditional Control Flow
contract Conditional {
    /// @notice Returns value based on the parameter's value.
    /// @param x Value to check.
    function useIf(uint256 x) public pure returns (uint256) {
        if (x < 5) {
            return 0;
        } else if (x < 10) {
            return 1;
        } else {
            return 2;
        }
    }
}