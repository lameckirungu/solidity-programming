// SPDX-License-Identifier: MIT

/**
 * @title BasicMath
 * @dev add, subtract, multiply and divide perform basic math Ops.
 */

contract BasicMath {

/**
 * @param _x & _y (the numbers to be operated on).
 * @return uint256 result of the operation.
 */ 
	function add(uint256 _x, uint256 _y) public pure returns (uint256) {
		return _x + _y;
	}

	function subtract(uint256 _x, uint256 _y) public pure returns (uint256) {
		return _x - _y;
	}
	function multiply(uint256 _x, uint256 _y) public pure returns (uint256) {
		return _x * _y;
	}

	function divide(uint256 _x, uint256 _y) public pure returns (uint256) {
		require(_y != 0, "Division by Zero is not allowed")
		return _x / _y;
	}
}
