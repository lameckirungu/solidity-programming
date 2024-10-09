// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title IntegerOps
 * @dev demonstrates various integer operations, demostrating overflow and underflow
 */

contract IntegerOps {
	function add(uint256 x, uint256 y) public pure returns(uint256) {
		return x + y;
	}
	function sub(uint256 x, uint256 y) public pure returns(uint256) {
		return x - y;
	}
	function mul(uint256 x, uint256 y) public pure returns(uint256) {
		return x * y;
	}
	function div(uint256 x, uint256 y) public pure returns(uint256) {
		require(y != 0, "No dividing by Zero");
		return x / y;
	}

	// Fucntion to demostrate underflow (will revert in Solidity >= 0.8.0)
	function testOverflow() public pure returns (uint256) {
		uint256 max = type(uint256).max;
		return max + 1; // This will cause an overflow and revert the transaction
	}

	// Fucntion to demostrate underflow (will revert in Solidity >= 0.8.0)
	function testUnderflow() public pure returns (uint256) {
		uint256 min = 0;
		return min - 1; // This will cause an underflow and revert the transaction
	}
}
