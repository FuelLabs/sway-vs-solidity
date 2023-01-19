contract;

abi Conditional {
    fn use_if(x: u64) -> u64;

    fn use_match(x: u64) -> u64;
}

impl Conditional for Contract {
    fn use_if(x: u64) -> u64 {
        if x < 5 {
            return 0;
        } else if x < 10 { 
            return 1; 
        } else { 
            return 2; 
        }
    }

    fn use_match(x: u64) -> u64 {
        match x {
            0 => 1,
            _ => 2,
        }
    }
}
