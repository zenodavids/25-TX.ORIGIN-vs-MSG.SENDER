// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//This smart contract defines a contract named "Good"
contract Good {
// Declare a public variable "owner" of type address
address public owner;

// constructor function which is called when the contract is deployed
constructor() {
    // msg.sender is the address that is calling the constructor function.
    // In this case, it will be the address that deploys the contract.
    // It assigns the address that deploys the contract as the owner.
    owner = msg.sender;
}

// function setOwner(address newOwner) which accepts a new owner address
function setOwner(address newOwner) public {
    // it requires that the origin of the transaction (tx.origin) is the current owner.
    // If not, it will revert the transaction with an error message "Not owner"
    require(tx.origin == owner, "Not owner");
    // If the condition is met, it assigns the new owner address to the owner variable.
    owner = newOwner;
}
}