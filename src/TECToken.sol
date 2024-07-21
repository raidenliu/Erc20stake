// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TECToken is ERC20, Ownable {
    uint256 blockNum;
    constructor()
        ERC20("TEC Token", "TEC")
        Ownable(msg.sender)  
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function getBlock() external {
        blockNum = block.number;
    }
}