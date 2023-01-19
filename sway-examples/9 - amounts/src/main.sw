contract;

use std::constants::BASE_ASSET_ID;

abi Amounts {
    fn amounts();
}

impl Amounts for Contract {
    fn amounts() {
        let one_gwei = 1;
        let one_ether = 1_000_000_000;
        let base_asset = BASE_ASSET_ID;
    }
}