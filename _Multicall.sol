// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Test_delegatecall {
	int public x;
	int public y;
	int public z;

	function setX(int n) public {
		x = n;
	}

	function setY(int n) public {
		y = n;
	}

	function setZ(int n) public {
		z = n;
	}

	function multicall(bytes[] calldata data) external returns (bytes[] memory results) {
		results = new bytes[](data.length);
		for (uint256 i = 0; i < data.length; i++) {
			(bool success, bytes memory result) = address(this).delegatecall(data[i]);
			if (success) {
				results[i] = result;
			}
		}
	}

}
