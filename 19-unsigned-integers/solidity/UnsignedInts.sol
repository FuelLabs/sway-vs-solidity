// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UintOperations {
    function u64Operation(uint64 x, uint64 y) public pure returns (uint64){
        return x + y;
    }

    function u128Operation(uint128 x, uint128 y) public pure returns (uint128){
        return x + y;
    }
    
    function u256Operation(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}
