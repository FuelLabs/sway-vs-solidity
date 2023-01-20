// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Hasher
contract Hashes {
    /// @notice Hashes via `keccak256` algorithm.
    function hashKeccak() public pure returns (bytes32) {
        return keccak256(abi.encode("Hello", "world!"));
    }

    /// @notice Hashes via `sha256` algorithm.
    function hashSha() public pure returns (bytes32) {
        return sha256(abi.encode("Hello", "world!"));
    }
}