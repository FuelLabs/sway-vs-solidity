contract;

use std::logging::log;

abi Event {
    fn logger();
}

impl Event for Contract {
    fn logger(){
        log(42);
        log("Hello World!");
    }
}