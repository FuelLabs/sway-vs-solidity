contract;

use std::{
    constants::ZERO_B256,
    asset::mint_to_address
};

abi MintTokens {
    fn mint_tokens(recipient: Address);
}

impl MintTokens for Contract {
    fn mint_tokens(recipient: Address) {
        let amount_to_mint = 1_000_000;
        mint_to_address(recipient, ZERO_B256, amount_to_mint);
    }
}
