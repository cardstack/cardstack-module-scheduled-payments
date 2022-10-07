// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity >=0.8.0;

import "../interfaces/IConfig.sol";

contract TestConfig is IConfig {
    address public crankAddress;
    address public feeReceiver;
    uint8 public validForDays;

    constructor(
        address _crankAddress,
        address _feeReceiver,
        uint8 _validForDays
    ) {
        crankAddress = _crankAddress;
        feeReceiver = _feeReceiver;
        validForDays = _validForDays;
    }

    function getCrankAddress() external view override returns (address) {
        return crankAddress;
    }

    function getFeeReceiver() external view override returns (address) {
        return feeReceiver;
    }

    function getValidForDays() external view override returns (uint8) {
        return validForDays;
    }

    function getValidForSeconds() external view returns (uint256) {
        return validForDays * 86400;
    }
}
