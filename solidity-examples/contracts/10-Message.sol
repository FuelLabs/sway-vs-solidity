// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Message Information
/// @notice Expoes all `msg.*` methods.
contract MessageInfo {
    /// @notice Returns the address of the caller.
    /// @dev Considered `view` as it must read the global state (caller).
    function getSender() public view returns (address) {
        return msg.sender;
    }

    /// @notice Returns the value of the call in Wei.
    /// @dev Considered `payable` as receiving Ether updates the global state.
    function getAmount() public payable returns (uint256) {
        return msg.value;
    }

    /// @notice Returns the four byte function selector.
    /// @dev Considered pure as only the calldata is read.
    function getSig() public pure returns (bytes4) {
        return msg.sig;
    }

    /// @notice Returns the full calldata.
    /// @dev Considered pure as only the calldata is read.
    function getData() public pure returns (bytes memory) {
        return msg.data;
    }
}