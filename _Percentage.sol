// SPDX-License-Identifier: GPL-3.0

// credits: https://muens.io/solidity-percentages
// A basis point is one hundredth of 1 percentage point. 1% is 100bps

pragma solidity ^0.8;

contract Percentages {
    function calculate(uint256 amount, uint256 bps) public pure returns (uint256) {
        require((amount * bps) >= 10_000);
        return amount * bps / 10_000;
    }
}
