// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

function privateFunction(){
    // this function can only be called internally
}

function privatePureFunction() pure {
    // this function can only be called internally
}

contract Functions {
    function publicFunction() public {
        // this function can be called internally and externally
        privateFunction();
    }

    function internalFunction() internal {
        // this function can only be called internally
    }
    
    function externalFunction() external {
        // this function can only be called externally
        internalFunction();
    }

    function pureFunction(uint x) public pure returns (uint y) {
        // can only call other pure functions
        privatePureFunction();
        return x;
    }
}