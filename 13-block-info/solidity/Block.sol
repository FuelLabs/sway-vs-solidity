// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Block Information
/// @notice Some block information is ommitted for comparasion to Sway.
contract BlockInfo {
    /// @notice Gets block hash of a given block.
    /// @param blockNumber Block number for which the hash should be returned.
    function getBlockHash(uint256 blockNumber) public view returns (bytes32) {
        return blockhash(blockNumber);
    }

    /// @notice Gets current block number.
    function getBlockNumber() public view returns (uint){
        return block.number;
    }

    /// @notice Gets current block timestamp.
    function getBlockTimestamp() public view returns (uint){
        return block.timestamp;
    }
}