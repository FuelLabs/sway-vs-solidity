contract;

use std::storage::*;

abi HelloWorld {
    #[storage(read)]
    fn get_greeting() -> str[12];
}

storage {
    greeting: str[12] = "Hello World!",
}

impl HelloWorld for Contract {
    #[storage(read)]
    fn get_greeting() -> str[12] {
        return storage.greeting.read()
    }
}
