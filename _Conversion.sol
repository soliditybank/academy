// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

contract Test {

    function mul(uint x, int y) public pure returns (uint) {
        return x*uint(y);
    }

}
