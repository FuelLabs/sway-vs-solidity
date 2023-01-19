contract;

use std::{call_frames::contract_id, context::this_balance};

abi ContractInfo {
    fn get_contract_id() -> ContractId;

    fn get_contract_balance(asset: ContractId) -> u64;
}

impl ContractInfo for Contract {
    fn get_contract_id() -> ContractId {
        contract_id()
    }

    fn get_contract_balance(asset: ContractId) -> u64 {
        this_balance(asset)
    }
}