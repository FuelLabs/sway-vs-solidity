// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MyToken {
    error TransferError(address from, address to);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);

    string public name;

    string public symbol;

    uint8 public constant decimals = 18;

    uint256 totalSupply;

    mapping(address => uint256) balanceOf;

    mapping(address => mapping(address => uint256)) allowance;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function transfser(address to, uint256 value) external returns (bool) {
        if (to == address(0)) revert TransferError(msg.sender, to);

        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) external returns (bool) {
        if (from == address(0) || to == address(0)) revert TransferError(from, to);

        allowance[from][msg.sender] -= value;
        balanceOf[from] -= value;
        balanceOf[to] += value;
        emit Transfer(from, to, value);
        return true;
    }

    function approve(address spender, uint256 value) external returns (bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function _mint(address to, uint256 value) internal {
        balanceOf[to] += value;
        totalSupply += value;
        emit Transfer(address(0), to, value);
    }
}