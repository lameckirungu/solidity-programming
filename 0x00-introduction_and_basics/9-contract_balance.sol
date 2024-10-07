// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title BalanceChecker
 * @dev Creates an account that receives Ether and returns the contract's balance in Wei
 */

contract BalanceChecker {
	function getBalance() public view returns (uint256) {
		return address(this).balance;
	}

	/**
	 * @dev Payable function to receive Ether.
	 */

	receive() external payable {}
	
}
