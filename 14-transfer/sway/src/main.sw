contract;

use std::{
    constants::BASE_ASSET_ID,
    asset::{
        transfer,
        force_transfer_to_contract,
        transfer_to_address,
    },
};

abi Transfer {
    fn transfer_to_address_or_contract(receiver: Identity);

    fn transfer_to_address(receiver: Address);

    fn transfer_to_contract(receiver: ContractId);
}

impl Transfer for Contract {
    fn transfer_to_address_or_contract(receiver: Identity) {
        transfer(receiver, BASE_ASSET_ID, 1);
    }

    fn transfer_to_address(receiver: Address) {
        transfer_to_address(receiver, BASE_ASSET_ID, 1);
    }

    fn transfer_to_contract(receiver: ContractId) {
        force_transfer_to_contract(receiver, BASE_ASSET_ID, 1);
    }
}
