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
