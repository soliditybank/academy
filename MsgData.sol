// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract MsgData {

    function foo() public pure returns (bytes calldata) {
        return msg.data;
    }

    fallback() external {}

}
