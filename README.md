# Sway vs Solidity Examples

This repo contains 1:1 examples showing how to implement example Solidity code in Sway.

## 1 - Hello World

A basic contract that stores a variable `greeting`, and has a function to return the value of that variable.

[Hello World Twitter Thread](https://twitter.com/schwartzswartz/status/1617902570630156294)

## 2 - Counter

This contract stores a variable called `counter` in persistent storage, and has two functions: `count` which reads the value of `counter`, and `increment` which adds 1 to the current value of `counter`.

## 3 - Logging

This contract logs the number `42` and the string `Hello World!` whenever someone calls the `logger` function.

[Logging Twitter Thread](https://twitter.com/SwayLang/status/1620077543322947584)

## 4 - Storage

This contract stores five types of state variables: a number, a string, a boolean, a map, and an array. It has functions to read and update their values.

[Storage Twitter Thread](https://twitter.com/schwartzswartz/status/1621166627093094400)

## 5 - Conditional

This contract just includes some simple conditional logic to demonstrate the syntax.

## 6 - Structs (ToDo contract)

A `Todo` contract that stores a persistent array of `Todo` structs, and has functions to create a new `Todo`, get the value of one, and update an existing one.

## 7 - Errors

This contract demonstrates a few ways to throw errors.

## 8 - Functions

A contract with internal and external functions.

## 9 - Amounts

This contract shows the units used for amounts of ether.

## 10 - Message Info

This contract shows how to access the message sender and message amount sent in a transaction.

[Message Info Twitter Thread](https://twitter.com/SwayLang/status/1622991008488206337)

## 11 - Gas Info

This contract shows how to access information about the gas used in a transaction.

## 12 - Contract Info

This contract shows how to access the contract's balance and id.

## 13 - Block Info

This contract shows how to access information about the current block.

## 14 - Transfer

This contract shows the methods available to transfer assets.

## 15 - Mint Tokens

A contract that mint tokens.

## 16 - Hashing

A contract that uses sha256 and keccack256 hashing.

## 17 - EC Recover

This contract shows how to recover a public key from a signed message.

## 18 - Re-entrancy Guard

A contract that includes a guard against a re-entrancy attack.

## 19 - Unsigned Integers

This contract shows how unsigned integers are handled beyond the native max of u64

## 20 - Contract Calls

This contract shows how a contract can call other contracts through interfaces
