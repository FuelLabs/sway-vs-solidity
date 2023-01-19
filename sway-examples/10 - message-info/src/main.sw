contract;

use std::{
    auth::{AuthError, msg_sender},
    call_frames::msg_asset_id, 
    context::msg_amount
};

abi MessageInfo {
    fn get_sender() -> Identity;

    #[payable]
    fn get_amount() -> u64;

    #[payable]
    fn get_asset_id() -> ContractId;
}

impl MessageInfo for Contract {
    // returns the identity of the sender
    fn get_sender() -> Identity {
        msg_sender().unwrap()
    }

    // returns the amount sent (can be any asset)
    #[payable]
    fn get_amount() -> u64 {
        msg_amount()
    }

    // returns the asset id of the asset sent
    #[payable]
    fn get_asset_id() -> ContractId {
        msg_asset_id()
    }
}