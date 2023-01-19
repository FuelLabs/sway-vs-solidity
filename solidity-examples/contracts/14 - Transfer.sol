// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Transfer {
    function sendWithTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function sendWithSend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    // This is the current recommended method
    function sendWithCall(address payable _to) public payable {
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
