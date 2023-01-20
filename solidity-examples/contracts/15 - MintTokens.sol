// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title ERC20 Token
contract MyToken {
    /// @notice Transfer Error.
    /// @dev Thrown when transfer to or from the zero address occurs.
    /// @param from Sending address.
    /// @param to Receiving address.
    error TransferError(address from, address to);

    /// @notice Transfer event.
    /// @dev Logged on successful transfer.
    /// @param from Sending address.
    /// @param to Receiving address.
    /// @param value Amount transferred.
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @notice Approval event.
    /// @dev Logged on approval.
    /// @param owner Owner address.
    /// @param spender Spender address allowed to transfer on behalf of `owner`.
    /// @param value Amount approved.
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /// @notice Token name.
    string public name;

    /// @notice Ticker symbol.
    string public symbol;

    /// @notice Decimal places.
    uint8 public constant decimals = 18;

    /// @notice Total token supply.
    uint256 totalSupply;

    /// @notice HashMap maps accounts to their respective balances.
    mapping(address => uint256) balanceOf;

    /// @notice Nested HashMap maps owners to spenders to the spenders' respective allowances.
    mapping(address => mapping(address => uint256)) allowance;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    /// @notice Transfers from the caller to another address
    /// @dev Throws when receiver is zero address or when insufficient balance.
    /// @param to Receiver address.
    /// @param value Amount to transfer.
    function transfser(address to, uint256 value) external returns (bool) {
        if (to == address(0)) revert TransferError(msg.sender, to);

        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    /// @notice Transfers from one address to another
    /// @dev Throws when receiver is zero address, when insufficient balance, or when insufficient
    /// allowance.
    /// @param from Sender address.
    /// @param to Receiver address.
    /// @param value Amount to transfer.
    function transferFrom(address from, address to, uint256 value) external returns (bool) {
        if (from == address(0) || to == address(0)) revert TransferError(from, to);

        // only deduct from allowance IF the max is not approved AND the `from` address is not the
        // caller.
        if (msg.sender != from && allowance[from][msg.sender] < type(uint256).max)
            allowance[from][msg.sender] -= value;

        balanceOf[from] -= value;
        balanceOf[to] += value;
        emit Transfer(from, to, value);
        return true;
    }

    /// @notice Approves an amount for a `spender` to transfer on behalf of the caller.
    /// @dev Setting it to the `type(uint256).max` value will give infinite approval.
    /// @param spender Spender address.
    /// @param value Amount approved for `spender` to transfer on behalf of the caller.
    function approve(address spender, uint256 value) external returns (bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    /// @dev Internal mint function. Logs `Transfer` from zero address.
    function _mint(address to, uint256 value) internal {
        balanceOf[to] += value;
        totalSupply += value;
        emit Transfer(address(0), to, value);
    }
}