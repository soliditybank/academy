// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

/// @author admin.soliditybank.eth
/// @title Basic arithmetic

contract Arithmetic {

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

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

}
