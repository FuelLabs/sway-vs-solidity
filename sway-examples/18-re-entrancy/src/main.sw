contract;

dep reentrancy;

use reentrancy::reentrancy_guard;

abi ReEntrancyGuard {
    fn safe_function();
}

impl ReEntrancyGuard for Contract {
    fn safe_function(){
        reentrancy_guard();
        // do something
    }
}