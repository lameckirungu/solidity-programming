// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title TypeCasting
 * @dev Demonstrates various type casting operations in Solidity
 */

contract TypeCasting {
	uint8 public num8 = 255;
	uint256 public unum256;
	int256 public num256 = -100;

	function convertSignedIntToUnsigned() public view returns (uint256) {
		unum256 = uint(num256); // This can wrap -ve integers
		return unum256;
	}

	function castUint8ToInt256() public view returns (int256) {
		num256 = int(num8);
		return num256;
	}
	
	function castAddressToUint160(address _addr) public pure returns (uint160) {
		return uint160(_addr);
	}

	function catUint160ToAddress(uint160 _num) public pure returns (address) {
		return address(_num);
	}
	// function demonstrating type casting between bytes and address
	function castBytesToAddress(bytes memory _bytes) public pure returns (address) {
		require(_bytes.length == 20, "Invalid address length");
		address addr;

		assembly {
			addr := mload(add(_bytes, 20)) // Extract address from bytes array
		}
		return addr;
	}
	// function demonstrating casting bytes to uint
	function castBytesToUint(bytes memory _bytes) public pure returns (uint256) {
		require(_bytes.length >= 32, "Bytes array too short");

		uint256 result;
		assembly {
			result := mload(add(_bytes, 32))
		}
		return result;
	}
	// function demonstrating casting uint to bytes
	function castUintToBytes(uint256 _number) public pure returns (bytes memory) {
		bytes memory result = new bytes(32);
		assembly {
			mstore(add(result, 32), _number) // store uint256 into bytes array
		}
		return result;
	}
}
