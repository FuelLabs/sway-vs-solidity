contract;

use std::storage::*;

abi HelloWorld {
    #[storage(read)]
    fn get_lucky_number() -> u64;
}

storage {
    // greeting: str = "Hello World!",
    lucky_number: u64 = 8,
}

impl HelloWorld for Contract {
    #[storage(read)]
    fn get_lucky_number() -> u64 {
        return storage.lucky_number.read()
    }
}
