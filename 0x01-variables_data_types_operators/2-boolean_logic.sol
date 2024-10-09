// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title BooleanLogic
 * @dev Implements basic boolean operations AND, OR, NOT, XOR and a complex boolean expr.
 */

contract BooleanLogic {
	function AND(bool[] memory arr) public pure returns (bool) {
		bool result = true; // Initialize to true for AND operation

		for (uint256 i = 0; i < arr.length; i++) {
			result =  result && arr[i]; // Accumulates the AND result
		}
		return result;
	}
	function OR(bool[] memory arr) public pure returns (bool) {
		for (uint256 i = 0; i < arr.length; i++) {
			result = result || arr[i]; // Accumulate OR result
		}
		return result;
	}
	// NOT operation: Returns the negation of the first element in the array
	function NOT(bool input) public pure returns (bool) {
		return !input; 
	}

	function XOR(bool[] memory arr) public pure returns (bool) {
		bool result = false;

		for (uint256 i = 0; i < arr.length; i++) {
			result = result != arr[i]; // Accumulate XOR result
		}
		return result;
	}
	// A boolean expression
	function boolexpr(bool A, bool B, bool C) public pure returns (bool) {
		return (A && B) || (!B && C) || (A != C);
	}
}
