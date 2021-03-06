// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';

contract MyToken is ERC20, ERC20Detailed {
    constructor(uint256 initialSupply) public ERC20Detailed("Dunkin Donuts Token", "DUNK", 0) {
        _mint(msg.sender, initialSupply);
    } 
}