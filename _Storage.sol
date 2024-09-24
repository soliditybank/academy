// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

/// @author admin.soliditybank.eth
/// @title A simple storage example

contract Contract_1_Storage {
    int256 private x;

    function getX() public view returns (int256) {
        return x;
    }

    function setX(int256 _x) public {
        x = _x;
    }
}
