# **Overview**
DegenToken is an ERC20-compliant smart contract designed for the Avalanche network, specifically for use in the Degen Gaming ecosystem. This token allows for seamless minting, transferring, redeeming, and burning functionalities to enhance the in-game economy.

## Features
Minting Tokens
The contract owner can mint new tokens and distribute them to players as rewards.
Transferring Tokens

Players can transfer tokens to other players using standard ERC20 functions.
Redeeming Tokens

Players can redeem tokens for in-game items, such as:
Skin: Costs 150 DGN each.
NFT: Costs 200 DGN each.
Heals: Costs 500 DGN each.
Burning Tokens
Any user can burn their unused tokens, permanently reducing the total supply.
Token Balance
Users can check their balance anytime using standard ERC20 balanceOf functionality.

# Setup Metamask
Create a new network with the following information
Network Name: Avalanche Fuji Testnet
Default RPC URL:  ​https://api.avax-test.network/ext/bc/C/rpc
Chain ID: 43113
Currency Symbol: AVAX
Block explorer URL: https://testnet.snowtrace.io

Network URL
# Deployment Information
Contract Name: DegenToken
Token Name: Degen
Token Symbol: DGN
Network: Avalanche Fuji Testnet
Contract Address: 0x7682B6DDC20CE79B1cc4C30647F0384E7F2Ab918
Transaction ID (Deployment): 0xf95e1ebba0529048b4ca9b76dbc8f69fec5afe3ed571dcce18eef9f0c0a0e1c6

## Degen.sol
'''

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
     uint256 public constant NFT_COST = 200;
    uint256 public constant SKIN_COST = 150;
    uint256 public constant HEALS_COST = 500;
    constructor(address ownerAddress) ERC20("Degen", "DGN") Ownable(ownerAddress) {}

    function mintTokens(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
    }

    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    function redeemTokens(uint256 itemId, uint256 quantity) public {
        uint256 cost;
        if (itemId == 1) {
            cost = SKIN_COST;
        } else if (itemId == 2) {
            cost = NFT_COST;
        } else if (itemId == 3) {
            cost = HEALS_COST;
        } else {
            revert("Invalid item ID: use 1, 2, or 3.");
        }

        uint256 totalCost = cost * quantity;
        _burn(msg.sender, totalCost);
    }
}

'''
## REMIX DEFAULT WORKSPACE

## Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

## SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file deploy_with_ethers.ts or  deploy_with_web3.ts

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.

## Authors
Prinz Jason Yanquiling 
