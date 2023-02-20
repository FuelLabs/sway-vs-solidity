contract;

use std::{block::{height, timestamp, timestamp_of_block}};

abi BlockInfo {
    fn get_block_height() -> u64;

    fn get_timestamp() -> u64;

    fn get_timestamp_of_block() -> u64;
}

impl BlockInfo for Contract {
    fn get_block_height() -> u64 {
        height()
    }

    fn get_timestamp() -> u64 {
        timestamp()
    }

    fn get_timestamp_of_block() -> u64 {
        timestamp_of_block(12345)
    }
}