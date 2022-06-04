# some-solidity-programming-notes

Chainlink hackathon: Blockchain dev competition

## Blockchain 🎲🔗 Basics

### Blockchain first uses - Bitcoin

Bitcoin was some of the first protocols that uses blockchain. On the Bitcoin White paper «Satoshi Nakamoto» described how Bitcoin can make peer to peer transactions in a decentralized network. This netword was powered by cryptography and decentrality that allows people to engage a censorship resistant finance in a decentralized manner. Due to its features peopleo took to this as a superior digital store of value, a better store of value over something like gold, for example, and thats why people commonly refers to it as a digital gold. There's a sacerce amount or a set amount of bitcoin avaialable.

### far more with blockchain technology

Vitalik Buterin releases a new withe papper for a new protocol named ETHEREUM, which uses the same blockchain infrastructure with additional features, like decentralized organizations and decentralized agreements or Smart Contracts.

The Smart Contract term it was initially defined by Nick Szabo and he defined like «set of instructions executed in a decentralized way without the need for a centralized or third party intermediary»

Bitcoin vs ETH
Store of value vs Store of value and utility

When a SC is created for replace a non-digital agreement, the SC will need data from a non-blockchain source. But blockchain by themself can't interact, read or listen data from that source, so due to SC  need extenernal data and computation it is when BC Oracle comes into play.

BC Oracle
Is any devic that interacts with the off-chain world to provide external data or computation to smart contracts. To maintain the decentralized principle that governs SC, a decentralized Oracle Network is needed. The protocol that makes DON its called chainlink

Hybrid Smart Contracts
Are SC contracts that have on-chain and off-chain agreements

🎲🔗 is a deterministic system (Whats does it means?)

Dapp = Decentralized Application = Decentralized Protocol = Smart Contract

Logic on SC are inmutable once deployed (Backend)

Web123...

What problem does this tech solves?
Create trust minimized agreements or «Unbreakable promises or agreements» and give speed, efficiency and transparency

Nick Szabo: Self executing set of instructions that execute without 3th parties 🙎🏻‍♂️

    Solidity Smart Contract = CODE FX           +         DATA
                            /     \                         |
                        (Setters & Getters)             States that recides at specific address on the Eth Blockchain

Sol variables initialize in 0
⚠️ Deploy, execution and transactions consume gas or eth ⚠️
default visibility is internal

Blue button means show output, and doesn't spend gas
Orange button means input

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

1. Create a .sol file
2. Add SPDX-Licence-identifier
This is optional but some compilers would show a warning message and makes code sharing more easier

        //SPDX-Licence-identifier: MIT
3. Define Solidity version
Only specified version
``pragma solidity 0.7.0;``
Specified version and above
``pragma solidity ^0.8.8;``
Specified range
``pragma solidity >=0.7.0 <0.8.0;``

4. Define contract (Like a Class)

        contract contract_Name{

            ...

        }

5. Define Setters and Getters
6. Compile
7. Deploy

## Funcions types

**View** functions disallow BC changes
**Pure** fx disallow BC changes and read states

## Structs and arrays

A Struct is like a OOP class or a user-defined data type and can be declared like:

    ```solidity
    struct struct_Name{
        property_type property_1_Name;
        ...
        property_type property_n_Name;
    }
    ```

An **array** can be defined like this:

```dataType[] varName```

See "structs_arrays.sol" file for examples

## Basic Solidity Memory, Storage & calldata

EVM Overview (What EVM stands for?)
Ethereum Virtual Machine. Any BC that implements EVM will be compatible, like Avalanche, Fantom, Polygon

EVM can access and stire information in six places:

1. Stack
2. Memory, Means that the variable only exist temporaly during some transaction when a Fx is called and the variable can be modified
3. Storage, This variables exist even outside of just de Fx executed. The variable can be Modified
4. Calldata, Means that the variable only exist temporaly during some transaction when a Fx is called and the variable can't be modified
5. Code
6. Logs

Arrays (A String is like an array), structs and mapping are considered special types

## Mappings

The mapping structure is like this:

mapping(dataType1 =>  dataType2) public variableName;

See "structs_arrays.sol" file for examples