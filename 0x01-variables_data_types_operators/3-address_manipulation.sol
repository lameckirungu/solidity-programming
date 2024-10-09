// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title AddressManipulation
 * @dev Shows various operations with Ethereum addresses.
 */

contract AddressManipulation {
	function isContract(address addr) internal view returns (bool) {
		/**
		 * Logic to check if an address is a contract
		 * Two ways to do this 
		 * Using inline assembly
		 * or in newer versions of solidity (0.8.x), using `addr.code.length`
		 * is often preferable.
		 */

		return addr.code.length > 0;
/**
 *		uint256 size;
 *
 *		assembly {
 *			size := extcodesize(addr)
 *		}
 *		// if the size is greater than zero, it's a contract
 *		return size > 0;
 */	       
	}
	function send(address payable recipient, uint256 amount) public payable {
		(bool success, ) = recipient.call{value: amount}("");
		require(success, "Failed to send Ether"); 
	}
	function bal(address addr) public view returns (uint256) {
		return addr.balance;
	}
}
