# MyToken Contract
This repository contains a simple implementation of the MyToken smart contract, an ERC20-compliant token with additional minting and burning functionalities. It is built using Solidity and leverages OpenZeppelin's reusable libraries for ERC20 and ownership control.

# Overview
Token Name: Prinz
Token Symbol: PrZ
Decimals: 18 (default for ERC20)
This contract allows the following functionalities:

Minting: The contract owner can mint tokens to any address.
Burning: Any user can burn tokens from their own balance.
Ownership: The Ownable module is used to restrict minting and manage ownership transfers.
# Features
1. ERC20 Compliance
This contract is built on the OpenZeppelin ERC20 implementation, ensuring compatibility with wallets, exchanges, and other Ethereum-based applications.

2. Minting (Owner-Only)
The contract owner has the ability to mint new tokens and assign them to any address.


# How to Use
To deploy the contract:
Use a development environment like Remix or a framework like Hardhat.
Specify the initialOwner address when deploying the contract.
Interact with the Contract
Once deployed, the following interactions are available:

Mint Tokens (Owner-only):
The owner can mint tokens by calling the mint function with the recipient's address and the token amount.

Burn Tokens (Any user):
Any user can call the burn function to reduce their token balance.

Transfer Tokens:
The inherited ERC20 transfer function can be used for token transfers between users.

Check Balance:
Use the inherited ERC20 balanceOf function to query a user's balance.

# Authors
Prinz Yanquiling
