contract;

use std::tx::{tx_gas_limit, tx_gas_price};

abi GasInfo {
    fn get_tx_gas_price() -> u64;
    fn get_tx_gas_limit() -> u64;
}

impl GasInfo for Contract {
    // Get the transaction gas price
    fn get_tx_gas_price() -> u64 {
        tx_gas_price()
    }

    // Get the gas limit for the transaction
    fn get_tx_gas_limit() -> u64 {
        tx_gas_limit()
    }
}