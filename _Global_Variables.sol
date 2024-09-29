//SPDX-License-Identifier: MIT

pragma solidity 0.8.27;

contract Global_Variables {
  function get_block_timestamp() public view returns (uint) {
    return block.timestamp;
  }
  function get_block_number() public view returns (uint) {
    return block.number;
  }
}
