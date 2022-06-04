# some-solidity-programming-notes

Descentralized apps or Dapps for short run on a P2P network
SC run when certain condition are met
Logic on SC are inmutable once deployed (Backend)
Vitalik Buterin: ETH creator
NIck Szabo: Self executing set of instructions that execute without 3th parties 🙎🏻‍♂️

    Solidity Smart Contract = CODE FX           +         DATA
                            /     \                         |
                        (Setters & Getters)             States that recides at specific address on the Eth Blockchain

Sol variables initialize in 0
Deploy, execution and transactions consume gas or eth

## Some data-types

- View: No make a state change
- Pure: Make math
- Struck: User defined type
- Arrays[]
- Sol info storage:
  - Memory: Only store during SC execution
  - Storage: Keeps 4 ever

### Address type

- Unallow arithmetic operations
- Suitable for store:
  - Address of a SC
  - Hash of the pulic half of a key pair belonging to external accounts

### Public

- Allow to access the value from outside SC

### Mapping

Its like a Hash table, maps addresses onto UInt

## Visibility

- External
- Internal
- Public
- Private

## Basic steps for dev a SSC

1. Sol version

        pragma solidity >0.7.0 <0.9.0

2. Define contract (Like a Class)

        contract contract_Name{

            ...

        }

3. Define Setters and Getters
