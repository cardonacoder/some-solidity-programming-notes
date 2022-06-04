// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.8;

contract simpleStorage{

    uint128 public FavNumber;

    // Setter Fx
    function store(uint128 newFavNumber)public {
        FavNumber = newFavNumber;
    }

    // Getter Fx
    function retrieve() public view returns(uint128){
        return FavNumber;
    }

    // Pure Fx
    function add() public pure returns(uint128){
        return(1+1);
    }

}