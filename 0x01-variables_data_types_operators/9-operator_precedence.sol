// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title OperatorPrecedence
 * @dev Demonstrates operator precedence in solidity
 */

contract OperatorPrecedence {
	mapping(address => uint256) public balances;

	function transfer(address recipient, uint256 amount) public returns (bool) {
		require(balances[msg.sender] >= amount, "Insufficient Balance");
		require(amount > 0 && recipient != address(0), "Invalid transfer");

		balances[msg.sender] -= amount;
		balances[recipient] += amount;

		return true;
	}

	function checkCondition(uint256 x, uint256 y, bool isTrue) public pure returns (bool) {
		return x > 5 && y < 10 || isTrue;
		// AND (&&) has higher precedence than OR.
	}

	function calculate() public pure returns (uint256) {
		uint256 result = (5 + 3) * 2; 
		// Parenthesis override precedence
		return result;
	}
}
