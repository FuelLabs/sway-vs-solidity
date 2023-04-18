contract;

abi Errors {
    fn test_require(i: u64);
    
    fn test_custom_require(i: u64);

    fn test_revert(i: u64);

    fn test_assert(i: u64);
}

enum InvalidError {
    InputIsLessThanTen: u64
}

impl Errors for Contract {    
    // Recommended custom, dev-defined require error for gas savings
    fn test_custom_require(i: u64) {
        require(
            i < 10, 
            InvalidError::InputIsLessThanTen(i)
        );
    }

    // Not recommended for require
    fn test_require(i: u64) {
        require(
            i < 10, 
            "Input must be greater than ten"
        );
    }

    fn test_revert(i: u64) {
        if (i <= 10) {
            revert(i);
        }
    }

    fn test_assert(i: u64) {
        assert(i == 10);
    }
}