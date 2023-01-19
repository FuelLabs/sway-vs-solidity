contract;

// all functions in the abi can be called externally
abi Functions {
    fn public_function();

    fn use_private_function(a: u64, b: u64) -> u64;
}

// this function can only be called internally
fn private_function(a: u64, b: u64) -> u64 {
    a + b
}

impl Functions for Contract {
    fn public_function() {
        // do something
    }

    fn use_private_function(a: u64, b: u64) -> u64 {
        private_function(a, b)
    }
}