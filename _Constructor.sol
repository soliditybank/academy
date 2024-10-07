// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

/// @author admin.soliditybank.eth
/// @title Constructor

contract Contract_5_Constructor {

    string public name;
    string public symbol;
    uint256 public decimals;

    constructor (string memory _name, string memory _symbol, uint _decimals) {
        name = _name;
        symbol = _symbol;
        decimmals = _decimals;
    }

}
