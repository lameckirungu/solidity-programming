// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Payments
 * @dev Receives ether and allows checking the contract's balance
 */

contract Payments {

	uint256 public amount;

	// Event declaration to capture the sender's address and amount sent.
	event Deposit(address indexed from, uint256 amount);

	function deposit(address to, uint256 _amount) public {
		amount += _amount;
		emit Deposit(to, _amount);
	}

	function checkBalance() public view returns (uint256) {
		return amount;
	}
}

// An alternative better way

contract Payments {

	event Deposit(address indexed from, uint256);

	/** 
	 * @dev Receives Ether and emits a Deposit event
	 */

	function deposit() public payable {
		emit Deposit(msg.sender, msg.value);
	}
	function checkBalance() public view returns (uint256) {
		return address(this).balance;
	}
}

