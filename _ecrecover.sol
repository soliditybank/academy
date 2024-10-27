// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Test {
  function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) public returns (address) {
    return ecrecover(hash, v, r, s);
  }
}
