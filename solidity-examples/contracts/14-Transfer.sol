// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Transferooor
contract Transfer {
    /// @notice Send via `address.transfer` method.
    /// @dev DOES NOT send enough gas to reenter.
    function sendWithTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    /// @notice Send via `address.send` method.
    /// @dev DOES NOT send enough gas to reenter.
    function sendWithSend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    /// @notice Send via `address.call` method.
    /// @dev RECOMMENDED method for transfers.
    function sendWithCall(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}