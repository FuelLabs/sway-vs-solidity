// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Elliptic Curve Ops
contract ECRecover {
    /// @notice Recovers a public address, given a message hash and signature.
    /// @param ethSignedMessageHash Hash of message.
    /// @param signature EC signature.
    function recoverSigner(
        bytes32 ethSignedMessageHash,
        bytes memory signature
    ) public pure returns (address) {
        (bytes32 r, bytes32 s, uint8 v) = splitSignature(signature);

        // A recovered public key
        return ecrecover(ethSignedMessageHash, v, r, s);
    }

    /// @notice Splits an EC signature into its `r`, `s`, and `v` components.
    /// @param sig Signature to split.
    function splitSignature(bytes memory sig)
        public
        pure
        returns (bytes32 r, bytes32 s, uint8 v)
    {
        require(sig.length == 65, "invalid signature length");
        assembly {
            r := mload(add(sig, 32))
            s := mload(add(sig, 64))
            v := byte(0, mload(add(sig, 96)))
        }
    }
}
