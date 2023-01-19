contract;

abi Errors {
    fn test_require(i: u64);

    fn test_revert(i: u64);

    fn test_assert();
}

enum InvalidError {
    InputIsLessThanTen: u64,
}

impl Errors for Contract {
    fn test_require(i: u64) {
        require(
            i < 10, 
            InvalidError::InputIsLessThanTen(i)
        );
    }

    fn test_revert(i: u64) {
        if i <= 10 {
            revert(9);
        }
    }

    fn test_assert() {
        assert(0 == 0);
    }
}