// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Only callable interanlly, reads and writes storage.
function freeInternalFunction() {
    assembly { sstore(0, sload(0)) }
}

// Only callable internally, does not interact with storage.
function freeInternalPureFunction() pure {}

/// @title Functions
contract Functions {
    /// @dev Publicly callable function. Calls internal free function.
    /// MAY be called within the same contract.
    function publicFunction() public {
        freeInternalFunction();
    }

    /// @dev Internally callable function. MAY be called within the same contract.
    function internalFunction() internal pure {}
    
    /// @dev Externally callable function. Calls internal contract function.
    /// MAY NOT be called within the same contract.
    function externalFunction() external pure {
        internalFunction();
    }

    /// @dev Publicly callable function.
    /// @param x Input value.
    /// @param y Output value.
    function pureFunction(uint256 x) public pure returns (uint256 y) {
        // can only call other pure functions
        freeInternalPureFunction();
        return x;
    }

    /// @dev Private function. MAY be called within the same contract.
    /// MAY NOT be called by inheriting contracts.
    function privateFunction() private pure returns (bool) {
        return true;
    }
}