# Sway vs Solidity Examples

### This repo contains 1:1 examples showing how to implement example Solidity code in Sway.

> **Note**
> [Sway](https://github.com/FuelLabs/sway) is a language under heavy development therefore the applications may not be the most ergonomic. Over time they should receive updates / improvements in order to demonstrate how Sway can be used in real use cases.

<p align="center">
    <a href="https://github.com/FuelLabs//sway-vs-solidity/actions/workflows/ci.yml" alt="CI">
        <img src="https://github.com/FuelLabs/sway-vs-solidity/actions/workflows/ci.yml/badge.svg" />
    </a>
    <a href="./LICENSE" alt="forc">
        <img src="https://img.shields.io/github/license/FuelLabs/sway-vs-solidity" />
    </a>
    <a href="https://discord.gg/xfpK4Pe">
        <img src="https://img.shields.io/discord/732892373507375164?color=6A7EC2&logo=discord&logoColor=ffffff&labelColor=6A7EC2&label=Discord" />
    </a>
</p>

## Repository Structure

Each project in this repository is self-contained and operates independently of the others. This means that means for every `Sway` project example there is a subsequent `Solidity` example. 

However, it's important to keep in mind that all the projects are integrated within the same CI system. Therefore, any updates or modifications to one project must guarantee that the other projects still function correctly.

To illustrate the structure of the repository, below is a visual representation.

```
├── sway-vs-solidity   
│   └── 01-hello-world
│       ├── solidity
│       └── sway
│   ...
│
├── LICENSE
└── README.md
```

## Examples
1. Hello World: A basic contract that stores a variable `greeting`, and has a function to return the value of that variable. 

    [Hello World Twitter Thread](https://twitter.com/schwartzswartz/status/1617902570630156294)

2. Counter: This contract stores a variable called `counter` in persistent storage, and has two functions: `count` which reads the value of `counter`, and `increment` which adds 1 to the current value of `counter`.

3. Logging: This contract logs the number `42` and the string `Hello World!` whenever someone calls the `logger` function.

    [Logging Twitter Thread](https://twitter.com/SwayLang/status/1620077543322947584)

4. Storage: This contract stores five types of state variables: a number, a string, a boolean, a map, and an array. It has functions to read and update their values.

    [Storage Twitter Thread](https://twitter.com/schwartzswartz/status/1621166627093094400)

5. Conditional: This contract just includes some simple conditional logic to demonstrate the syntax.

6. Structs: A `Todo` contract that stores a persistent array of `Todo` structs, and has functions to create a new `Todo`, get the value of one, and update an existing one.

7. Errors: This contract demonstrates a few ways to throw errors.

8. Functions: A contract with internal and external functions.

9. Amounts: This contract shows the units used for amounts of ether.

10. Message Info: This contract shows how to access the message sender and message amount sent in a transaction.

    [Message Info Twitter Thread](https://twitter.com/SwayLang/status/1622991008488206337)

11. Gas Info: This contract shows how to access information about the gas used in a transaction.

12. Contract Info: This contract shows how to access the contract's balance and id.

13. Block Info: This contract shows how to access information about the current block.

14. Transfer: This contract shows the methods available to transfer assets.

15. Mint Tokens: A contract that mint tokens.

16. Hashing: A contract that uses sha256 and keccack256 hashing.

17. EC Recover: This contract shows how to recover a public key from a signed message.

18. Re-entrancy Guard: A contract that includes a guard against a re-entrancy attack.

    [Re-entrancy Guard Twitter Thread](https://twitter.com/SwayLang/status/1621210727275970560)

19.  Unsigned Integers: This contract shows how unsigned integers are handled beyond the native max of u64

20.  Contract Calls: This contract shows how a contract can call other contracts through interfaces

## Running a project
In order to utilize our tools and run any of the projects, it is necessary for you to clone this repository and follow the [installation steps](https://fuellabs.github.io/sway/v0.38.0/book/introduction/installation.html) for the Fuel tool suite.

## Contributing 
Feel free to open up an issue 