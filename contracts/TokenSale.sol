// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Crowdsale.sol";
import "./KycContract.sol";

contract TokenSale is Crowdsale {
    KycContract kyc;

    constructor(
        uint256 rate,
        address payable wallet,
        IERC20 token,
        KycContract _kyc
    ) public Crowdsale(rate, wallet, token) {
        kyc = _kyc;
    }

    function _preValidatePurchase(address beneficiary, uint256 weiAmount)
        internal
        override
        view
    {
        super._preValidatePurchase(beneficiary, weiAmount);
        require(
            kyc.kycCompleted(msg.sender),
            "KYC not completed. Purchase not allowed."
        );
    }
}
