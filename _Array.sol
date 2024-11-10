// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

/// @author admin.soliditybank.eth
/// @title Arrays (Last In, First Out)

contract Array {

	int256[] public arr;
	uint256[] public arr2;

	address[] memory path;
	if (tokenA == WETH || tokenB == WETH) {
		path = new address[](2);
		path[0] = tokenA;
		path[1] = tokenB;
	} else {
		path = new address[](3);
		path[0] = tokenA;
		path[1] = WETH;
		path[2] = tokenB;
	}
	
	function addItem(int256 i) public {
        	arr.push(i);
	}

	function removeItem() public {
		arr.pop();
	}
	
}
