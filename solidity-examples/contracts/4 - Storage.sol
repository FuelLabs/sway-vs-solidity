// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Storage Manager
contract Storage {
    /// @notice Number variable.
    uint256 public number = 2;

    /// @notice String variable.
    /// @dev use `stringg` because `string` is a Solidity keyword.
    string public stringg = "Sol";

    /// @notice Boolean varibale.
    bool public boolean = false;

    /// @notice HashMap maps number to address.
    mapping(uint => address) public map;

    /// @notice Arbitrary length storage array.
    uint256[] public array = [1,2,3];

    /// @notice Internal Number.
    /// @dev No getter function is generated.
    uint256 internal internalNumber = 45;

    /// @notice Private Number.
    /// @dev No getter function is generated.
    /// Inheriting contracts MAY NOT override or deal with this value directly.
    uint256 private privateNumber = 55;

    /// @notice Returns storage variables.
    /// @dev The `view` keyword indicates it ONLY reads storage.
    function readStorage() public view returns (
        uint256,
        string memory,
        bool,
        address,
        uint256,
        uint256,
        uint256
    ) {
        uint256 newNumber = number;
        string memory newString = stringg;
        bool newBoolean = boolean;
        address newAddress = map[1];
        uint arrayNumber = array[0];
        uint256 newInternalNumber = internalNumber;
        uint newPrivateNumber = privateNumber;

        return (
            newNumber,
            newString,
            newBoolean,
            newAddress,
            arrayNumber,
            newInternalNumber,
            newPrivateNumber
        );
    }

    /// @notice Updates storage variables.
    function updateStorage() public {
        number = 5;
        stringg = "evm";
        boolean = true;
        address myAddress = 0x0101010101010101010101010101010101010101;
        map[1] = myAddress;
        array.push(4);
        internalNumber = 19;
        privateNumber = 20;
    }

    /// @notice Reads and Updates storage.
    function readUpdateStorage() public {
        number = number + 1;
        stringg = stringg;
        boolean = !boolean;
        map[2] = map[1];
        array.push(array[0]);
        internalNumber = internalNumber + 1;
        privateNumber = privateNumber + 1;
    }

    /// @notice Does not interact with storage.
    function pureFunction (uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}