//SPDX-License-Identifier: MIT

pragma solidity 0.8.27;

contract Global_Variables {
  function get_block_timestamp() public view returns (uint) {
    return block.timestamp;
  }
  function get_block_number() public view returns (uint) {
    return block.number;
  }
  function get_basefee() public view returns (uint) {
    return block.basefee;
  }
  function get_chainId() public view returns (uint) {
    return block.chainid;
  }
}
