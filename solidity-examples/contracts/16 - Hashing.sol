// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Hashes {
    function hashKeccak() public pure returns (bytes32) {
        return keccak256(abi.encode("Hello", "world!"));
    }

    function hashSha() public pure returns (bytes32) {
        return sha256(abi.encode("Hello", "world!"));
    }
}