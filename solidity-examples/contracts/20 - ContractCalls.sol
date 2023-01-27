// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Bob {
    uint256 public favouriteNumber = 0;

    function copyAlicesNumber(address _alicesAddress) public returns(uint256) {
        IAlice alicesContract = IAlice(_alicesAddress);

        favouriteNumber = alicesContract.getFavouriteNumber();
        
        return favouriteNumber;
    }
}

interface IAlice {
    function getFavouriteNumber() external view returns(uint256);
}

/*
    DEPLOYED CONTRACT

    contract Alice {
        uint256 public favouriteNumber = 42;

        function getFavouriteNumber() public view returns(uint256) {
            return favouriteNumber;
        }
    }
*/
