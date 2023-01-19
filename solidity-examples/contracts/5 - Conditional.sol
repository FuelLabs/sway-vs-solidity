// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Conditional {
    function useIf(uint x) public pure returns (uint) {
        if (x < 5) {
            return 0;
        } else if (x < 10) {
            return 1;
        } else {
            return 2;
        }
    }
}