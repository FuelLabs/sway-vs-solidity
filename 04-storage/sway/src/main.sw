contract;

use std::{
    storage::storage_vec::*,
    hash::Hash,
};

abi Storage {
    #[storage(read)]
    fn read_storage();

    #[storage(write)]
    fn update_storage();

    #[storage(read, write)]
    fn read_and_update_storage();

    fn pure_function(a: u64, b: u64) -> u64;
}

storage {
    number: u64 = 0,
    boolean: bool = false,
    map: StorageMap<u64, Address> = StorageMap {},
    vector: StorageVec<u64> = StorageVec {},
}

impl Storage for Contract {
    #[storage(read)]
    fn read_storage() {
        let number = storage.number;
        let boolean = storage.boolean;
        // will return an Option with either Some(value) or None
        let map_item = storage.map.get(1);
        // will return an Option with either Some(value) or None
        let vector_item_option = storage.vector.get(0);
    }

    #[storage(write)]
    fn update_storage() {
        storage.number.write(8);
        storage.boolean.write(true);

        let addr1 = Address::from(0x0101010101010101010101010101010101010101010101010101010101010101);
        storage.map.insert(1, addr1);

        // requires both read & write
        // storage.vector.push(5);
    }

    #[storage(read, write)]
    fn read_and_update_storage() {
        let incremented = storage.number.read() + 1;
        storage.number.write(incremented);
        storage.boolean.write(!storage.boolean.read());

        // copy a storage map value to a new key
        let map_item = storage.map.get(1).read();
        storage.map.insert(2, map_item);

        // add 5 to the end of the storageVec vector
        storage.vector.push(5);
    }

    fn pure_function(a: u64, b: u64) -> u64 {
        a + b
    }
}
