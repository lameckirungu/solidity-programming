// SPDX-License-Identifier
pragma solidity ^0.8.0;

/**
 * @title SimpleStorage
 * @dev stores & retrieves an unsigned integer
 */
contract SimpleStorage {
	
	uint256 storedData;

	function set(uint256 x) public {
		storedData = x;
	}
	function get() public view returns (uint256) {
		return storedData;
	}
}
