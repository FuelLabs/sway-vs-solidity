// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ContractInfo {
   function getContractAddress() public view returns (address){
        return address(this);
   }

   function getContractBalance() public view returns (uint) {
        return address(this).balance;
   }
}