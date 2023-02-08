contract;

dep interface;
use interface::Alice;

abi Bob {
    #[storage(write, read)]
    fn copy_alices_number(contract_id: b256) -> u64;
}

storage {
    favourite_number: u64 = 0,
}

impl Bob for Contract {
    #[storage(write, read)]
    fn copy_alices_number(alices_address: b256) -> u64 {

        let alice_contract = abi(Alice, alices_address);
        
        storage.favourite_number = alice_contract.get_favourite_number();
        
        return storage.favourite_number;
    }
}