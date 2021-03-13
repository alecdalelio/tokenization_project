// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Crowdsale.sol";

contract TokenSale is Crowdsale {
    constructor (
        uint256 rate,
        address payable wallet,
        IERC20 token
    ) public
    
    Crowdsale(rate, wallet, token) {}
}
