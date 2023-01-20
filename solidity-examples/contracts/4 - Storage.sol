// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Storage {
    // persistent public storage (state) variables
    uint public number = 2;
    // string is a reserved keyword in solidity
    string public stringg = "Sol";
    bool public boolean = false;
    mapping(uint => address) public map;
    uint[] public array = [1,2,3];

    // private storage variable
    // there is no getter function created for this
    uint private privateNumber = 55;

    // the view keyword means this function
    // will only read from storage
    function readStorage() public view {
        uint newNumber = number;
        string memory newString = stringg;
        bool newBoolean = boolean;
        address newAddress = map[1];
        uint arrayNumber = array[0];
        uint newPrivateNumber = privateNumber;
    }

    // functions can read and write to storage by default
    function updateStorage() public {
        number = 5;
        stringg = "evm";
        boolean = true;
        address myAddress = 0x0101010101010101010101010101010101010101;
        map[1] = myAddress;
        array.push(4);

        privateNumber = 20;
    }

    function readUpdateStorage() public {
        number = number + 1;
        stringg = stringg;
        boolean = !boolean;
        map[2] = map[1];
        array.push(array[0]);

        privateNumber = privateNumber + 1;
    }

    // does not read from or write to storage
    function pureFunction (uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}