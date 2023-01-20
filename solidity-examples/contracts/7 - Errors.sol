// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Error Thrower
contract Error {
    /// @notice Requires `i` is greater than 10 with error string.
    /// @param i Value to constrain.
    function testRequire(uint256 i) public pure {
        require(i > 10, "Input must be greater than 10");
    }

    /// @notice Reverts if `i` is less than or equal to 10 with error string.
    function testRevert(uint256 i) public pure {
        if (i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    /// @notice Asserts `i` is equal to 0 with Panic error.
    function testAssert(uint256 i) public pure {
        assert(i == 0);
    }

    /// @notice Insufficient balance error.
    /// @dev Custom, dev-defined error.
    /// @param balance Balance held.
    /// @param withdrawAmount Amount requested to withdraw.
    error InsufficientBalance(uint balance, uint withdrawAmount);

    /// @notice Transfer failure error.
    /// @dev Custom, dev-defined error.
    /// @param revertData Revert returned from receiver.
    error TransferFailure(bytes revertData);

    /// @notice Tries to withdraw an amount from the contract.
    /// @dev Reverts when insufficent balance AND when the transfer fails.
    /// @param withdrawAmount Amount to withdraw.
    function tryWithdraw(uint withdrawAmount) public {
        uint256 balance = address(this).balance;

        if (balance < withdrawAmount) {
            revert InsufficientBalance(balance, withdrawAmount);
        }

        (bool success, bytes memory retData) = msg.sender.call{value: withdrawAmount}("");

        if (!success) revert TransferFailure(retData);
    }
}