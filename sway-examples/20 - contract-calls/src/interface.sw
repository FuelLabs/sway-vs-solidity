library interface;

abi Alice {
    #[storage(read)]
    fn get_favourite_number() -> u64;
}

/*
    DEPLOYED CONTRACT 

    storage {
        favourite_number: u64 = 42,
    }

    impl Alice for Contract {
        #[storage(read)]
        fn get_favourite_number() -> u64 {
            return storage.favourite_number;
        }
    }
*/