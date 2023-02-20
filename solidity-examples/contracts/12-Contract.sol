// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Contract Information
contract ContractInfo {
     /// @notice Get contract address.
     function getContractAddress() public view returns (address) {
          return address(this);
     }

     /// @notice Get contract balance.
     function getContractBalance() public view returns (uint256) {
          return address(this).balance;
     }
}