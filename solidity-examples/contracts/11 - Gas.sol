// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract GasInfo {
    // returns the transaction gas price
    function getGasPrice() public view returns (uint){
        return tx.gasprice;
    }

    // returns the remaining gas amount
    function getGas() public view returns (uint) {
        uint gas = gasleft();
        return gas;
    }
}