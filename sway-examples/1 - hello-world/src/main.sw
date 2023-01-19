contract;

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
        storage.greeting
    }
}