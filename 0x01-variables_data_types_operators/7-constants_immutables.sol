// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/** 
 * @title ConstantsImmutables
 * @dev Demonstrates the usage of constants and immutables
 */

contract ConstantsImmutables {
	uint256 public constant MAX_SUPPLY = 10000;
	string public constant TOKEN_NAME = "myToken";

	address public immutable OWNER;
	uint256 public immutable CREATION_TIME;

	constructor() {
		OWNER = msg.sender;
		CREATION_TIME = block.timestamp;
	}

	function getMaxSupply() public pure returns (uint256) {
		return MAX_SUPPLY;
	}

	function getOwner() public view returns (address) {
		return OWNER;
	}

	function getCreationTime() public view returns (uint256) {
		return CREATION_TIME;
	}
}
