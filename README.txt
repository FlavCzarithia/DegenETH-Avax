# DegenToken: Overview

**DegenToken** is an ERC20-compliant smart contract designed for the Avalanche network, specifically for use in the **Degen Gaming ecosystem**. This token allows for seamless minting, transferring, redeeming, and burning functionalities to enhance the in-game economy.

## Features

### Minting Tokens
- The contract owner can mint new tokens and distribute them to players as rewards.

### Transferring Tokens
- Players can transfer tokens to other players using standard ERC20 functions.

### Redeeming Tokens
- Players can redeem tokens for in-game items, such as:
  - **Skin**: Costs **150 DGN** each.
  - **NFT**: Costs **200 DGN** each.
  - **Heals**: Costs **500 DGN** each.

### Burning Tokens
- Any user can burn their unused tokens, permanently reducing the total supply.

### Token Balance
- Users can check their balance anytime using the standard ERC20 `balanceOf` functionality.

## Deployment Information

- **Contract Name**: DegenToken  
- **Token Name**: Degen  
- **Token Symbol**: DGN  
- **Network**: Avalanche Fuji Testnet  
- **Contract Address**: `0x7682B6DDC20CE79B1cc4C30647F0384E7F2Ab918`  
- **Transaction ID (Deployment)**: `0xf95e1ebba0529048b4ca9b76dbc8f69fec5afe3ed571dcce18eef9f0c0a0e1c6`  

# Remix Default Workspace

## Overview
The Remix default workspace is present when:
1. Remix loads for the very first time.  
2. A new workspace is created with the 'Default' template.  
3. There are no files existing in the File Explorer.  

## Workspace Structure
This workspace contains three directories:
1. **contracts**: Holds three contracts with increasing levels of complexity.  
2. **scripts**: Contains four TypeScript files to deploy a contract (explained below).  
3. **tests**: Contains one Solidity test file for the `Ballot` contract and one JS test file for the `Storage` contract.  

# Scripts

The **scripts** folder contains four TypeScript files to deploy the `Storage` contract using `web3.js` and `ethers.js` libraries.

- To deploy any other contract, update the contract's name from `Storage` to the desired contract and provide constructor arguments accordingly in the files:  
  - `deploy_with_ethers.ts`  
  - `deploy_with_web3.ts`

## Running Scripts
To run a script:
1. Right-click on the file name in the File Explorer.  
2. Click `Run`.  
3. Ensure the Solidity file is already compiled.  

- Script output will appear in the Remix terminal.  
- Note: Only limited require/import functionality is supported by Remix for specific modules (e.g., `ethers`, `web3`, `chai`, `swarmgw`, `multihashes`, `remix`, `hardhat`).

# Tests

The **tests** folder contains:
- Mocha-Chai unit tests for the `Storage` contract.  

# Authors

**Prinz Jason Yanquiling**
