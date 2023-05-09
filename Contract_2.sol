// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

/// @author admin.soliditybank.eth
/// @title Basic arithmetic

contract Contract_2 {

    function addition(int256 x, int256 y) public pure returns (int256) {
        return x+y;
    }
		
    function subtraction(int256 x, int256 y) public pure returns (int256) {
        return x-y;
    }
		
    function product(int256 x, int256 y) public pure returns (int256) {
        return x*y;
    }
		
    function division(int256 x, int256 y) public pure returns (int256 quotient, int256 remainder) {
        require(y != 0, "Error: Division by Zero");
        return (x/y, x%y);
    }

}
