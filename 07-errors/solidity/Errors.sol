// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Error Thrower
contract Error {
    /// @notice Requires `i` is greater than 10 with error string.
    /// @param i Value to constrain.
    function testRequire(uint256 i) public pure {
        require(i > 10, "Input must be greater than 10");
    }

    /// @notice Number less than ten error.
    /// @dev Recommended custom, dev-defined error for gas savings.
    /// @param i input number.
    error InputIsLessThanTen(uint256 i);

    /// @notice Reverts if `i` is less than or equal to 10 with error string.
    function testCustomRevert(uint256 i) public pure {
        if (i <= 10) {
            revert InputIsLessThanTen(i);
        }
    }
    
    /// @dev Not recommended error.
    /// @notice Reverts if `i` is less than or equal to 10 with error string.
    function testRevert(uint256 i) public pure {
        if (i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    /// @notice Asserts `i` is equal to 0 with Panic error.
    function testAssert(uint256 i) public pure {
        assert(i == 10);
    }
}