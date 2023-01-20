// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Gas Information
contract GasInfo {
    /// @notice Returns transaction gas price.
    function getGasPrice() public view returns (uint256) {
        return tx.gasprice;
    }

    /// @notice Returns remaining gas.
    function getGas() public view returns (uint256) {
        return gasleft();
    }
}