contract;

use std::hash::{keccak256, sha256};

abi Hashes {
    fn hash_keccack() -> b256;
    fn hash_sha() -> b256;
}

impl Hashes for Contract {
    fn hash_keccack() -> b256{
        keccak256(("Hello", "world!"))
    }

    fn hash_sha() -> b256{
        sha256(("Hello", "world!"))
    }
}