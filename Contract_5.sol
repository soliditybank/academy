// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

/// @author admin.soliditybank.eth
/// @title Constructor

contract Contract_5 {

    string public name;
    string public symbol;

    constructor (string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

}
