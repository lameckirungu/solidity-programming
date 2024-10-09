// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title BytesAndArrays
 * @dev Demonstrates working with bytes and arrays
 */

contract BytesAndArrays {
	
	// Declaring a dynamic byte array
	bytes public dynamicBytes;

	// State variables to hold bytes values
	bytes1 public fixed1;
	bytes2 public fixed2;
	bytes4 public fixed4;
	bytes8 public fixed8;
	bytes16 public fixed16;
	bytes32 public fixed32;

	function setFixedSizeBytes() public internal {
	
		// Setting each to its corresponding bytes value
		fixed1 = 0x1A;
		fixed2 = 0x1B2C;
		fixed4 = 0xAD453210;
		fixed8 = 0x713245ADEF073911;
		fixed16 = 0x713245ADEF07391A4532984373256789;
		fixed32 = 0x1A2B3C4D5E6F708192A3B4C5D6E7F80713245ADEF07391A4532984373256789;
	}

	function getFixedSizeBytes() public view returns (bytes1, bytes2, bytes4, bytes8, bytes16, bytes32) {
		return (bytes1, bytes2, bytes4, bytes8, bytes16, bytes32);
	}

	function getBytesValues() public view returns (bytes1, bytes2, bytes32) {

		dynamicBytes = new bytes(1);
		dynamicBytes[0] = fixed1;

		bytes memory dynamicBytes2 = new bytes(2);
		dynamicBytes2[0] = fixed2;
		dynamicBytes2[1] = fixed32;

		return (dynamicBytes, dynamicBytes2);
	}

	/**
	 * @dev Demonstrates the difference between storage and memory arrays
	 */
	

	// Storage Arrays

	uint256[] public storageArray;

	function addValue(uint256 value) public {
		storageArray.push(value);
	}

	function getValue(uint256 index) public view returns (uint256) {
		require(index < storageArray.length, "Index out of bound");
		return storageArray[index];
	}

	// Memory Arrays

	function SumArray(uint256[] memory inputArray) public view returns (uint256) {

		uint256 result = 0;
		for (uint256 j = 0; j < inputArray.length; j++) {
			result += inputArray[j];
		}
		return result;
	}
	
	// Function to create and return a memory array
	function MemArray() public pure returns (uint256[] memory) {

		uint256[3] tempArray;

		tempArray[0] = 10;
		tempArray[1] = 20;
		tempArray[2] = 30;

		return tempArray;
}
