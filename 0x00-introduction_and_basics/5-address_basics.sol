// SPDX-License-Identifier
pragma solidity ^0.8.0;

/**
 * @title AddressCheck
 * @dev Allows storing and comparing Ethereum addresses.
 */

contract AddressCheck {

	// State variable to store the address
	address public addr;

	function set(address _addr) public {
		addr = _addr;
	}

	/**
	 * @dev Compares the stored address with a given address.
	 * @param _addr1 The address to compare with the stored address.
	 * @return bool True if the addresses match, false otherwise.
	 */

	function compare(address _addr1) public view returns (bool) {
		return addr == _addr1; 
	}
}
