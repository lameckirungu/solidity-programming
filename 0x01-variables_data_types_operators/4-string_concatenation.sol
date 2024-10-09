// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title StringOps
 * @dev Shows various string operations
 */

contract StringOps {
	function concat(string memory _str1, string memory _str2) public pure returns (string memory) {
	return string(abi.encodePacked(_str1," ", _str2));
	}

	function StrLength(string memory _str) public pure returns (uint256) {
		return bytes(_str).length;
	}

	function toLowerCaseAssembly(string memory str) public pure returns (string memory) {
		bytes memory strBytes = bytes(str);

		// Allocate memory for the result
		bytes memory lowerStr = new bytes(strBytes.length);

		assembly {
		/** 
		 * Load the length of the string
		 * iterate over each character in the string
		 * Load the character
		 * Check if it's an uppercase letter
		 * Convert to lowercase by adding 32
		 * Store the char in the result
		 */

		let length := mload(strBytes)

		for { let i := 0} lt(i, length) {i := add(i, 1) } {
			let char := mload(add(add(strBytes, 0x20), i))

			if and(ge(char, 0x41), le(char, 0x5A)) {
				char := add(char, 0x20)
			}

			mstore8(add(lowerStr, add(0x20, i)), char)
			}
		}
		
		return string(lowerstr);
	}


/**
 * @dev to demonstrate string to lowercase conversion without assembly.
 * 0x41 corresponds to 'A'
 * 0x5A corresponds to 'Z'
 */

	function toLowercase(string memory str) public pure returns (string memory) {
		bytes memory strBytes = bytes(str);
		bytes memory lowerStr = new bytes(strBytes);

		for (uint256 i = 0; i < strBytes.length; i++) {
			bytes1 char = strBytes[i];

			if (char >= 0x41 && char <= 0X5A) {
				lowerStr[i] = bytes1(uint8(char) + 32);
			}
			else {
				lowerStr[i] = char;
			}
		}
		return string(lowerStr);
	}
}
