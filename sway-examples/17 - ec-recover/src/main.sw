contract;

use std::{
    b512::B512, 
    ecr::{
        ec_recover, 
        ec_recover_address
    },
};

abi ECRecover {
    fn use_ec_recover(signature: B512, msg_hash: b256);
}

impl ECRecover for Contract {
    fn use_ec_recover(signature: B512, msg_hash: b256) {
        // A recovered public key
        let public_key= ec_recover(signature, msg_hash).unwrap();

        // A recovered Fuel address
        let result_address = ec_recover_address(signature, msg_hash).unwrap();
    }
}