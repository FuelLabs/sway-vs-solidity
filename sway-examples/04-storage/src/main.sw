contract;

use std::storage::StorageVec;

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
    string: str[4] = "sway",
    boolean: bool = false,
    map: StorageMap<u64, Address> = StorageMap {},
    vector: StorageVec<u64> = StorageVec {},
}

impl Storage for Contract {
    #[storage(read)]
    fn read_storage() {
        let number = storage.number;
        let string = storage.string;
        let boolean = storage.boolean;
        // will return an Option with either Some(value) or None
        let map_item = storage.map.get(1);
        // will return an Option with either Some(value) or None
        let vector_item_option = storage.vector.get(0);
    }

    #[storage(write)]
    fn update_storage() {
        storage.number = 8;
        storage.string = "fuel";
        storage.boolean = true;

        let addr1 = Address::from(0x0101010101010101010101010101010101010101010101010101010101010101);
        storage.map.insert(1, addr1);

        // requires both read & write
        // storage.vector.push(5);
    }

    #[storage(read, write)]
    fn read_and_update_storage() {
        storage.number = storage.number + 1;
        storage.string = "labs";
        storage.boolean = !storage.boolean;

        // copy a storage map value to a new key
        let map_item = storage.map.get(1).unwrap();
        storage.map.insert(2, map_item);

        // add 5 to the end of the storageVec vector
        storage.vector.push(5);
    }

    fn pure_function(a: u64, b: u64) -> u64 {
        a + b
    }
}