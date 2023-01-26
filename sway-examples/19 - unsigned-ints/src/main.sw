contract;

use std::{ u128::U128, u256::U256 };

abi UintOperations {
    fn u64_operation(x: u64, y: u64) -> u64;
    fn u128_operation(x: u64, y: u64) -> U128;
    fn u256_operation(x: u64, y: u64) -> U256;
}

// All overflows and exceptions are handled natively by the VM
impl UintOperations for Contract {
    // max of 64 bits natively
    fn u64_operation(x: u64, y: u64) -> u64 {
        return x + y
    }

    // u128 are split into two 64 bits
    // (upper << 64) + lower
    fn u128_operation(x: u64, y: u64) -> U128 {
        return U128{upper: 0, lower: x} + U128{upper: 0, lower: y};
    }

    // u256 are split into four 64 bits
    // (a << 192) + (b << 128) + (c << 64) + d
    fn u256_operation(x: u64, y: u64) -> U256 {
        return U256{a: 0, b: 0, c: 0, d: x} + U256{a: 0, b: 0, c: 0, d: y};
    }
}
