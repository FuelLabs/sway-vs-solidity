// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Amounts
contract Amounts {
    /// @notice One Wei (smallest unit of Ether).
    uint public oneWei = 1 wei;

    /// @notice True, as `1 wei` is `1`.
    bool public isOneWei = 1 wei == 1;

    /// @notice One Giga-Wei (10 ** 9 Wei),
    uint public oneGwei = 1 gwei;
    
    /// @notice True, as `1 gwei` is `1e19` or `1_000_000_000`.
    bool public isOneGwei = 1 gwei == 1e9;

    /// @notice One Ether
    uint public oneEther = 1 ether;

    /// @notice True, as `1 ether` is `1e18` or `1_000_000_000_000_000_000`.
    bool public isOneEther = 1 ether == 1e18;
}