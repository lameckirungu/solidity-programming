// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Mortal
 * @dev Sends all the remaining Ether and self-destructs.
 */

contract Mortal {
	// stores the creator's address

	address private owner;

	constructor () public {
		owner = msg.sender;
	}

	function destroy(address payable recipient) public {
		require(owner == msg.sender, "Only the owner can call this function");

		// Send remaining balance to the recipient
		// When `transfer()` is used with `selfdestruct()`, it's redundant
		recipient.transfer(address(this).balance);

		selfdestruct(recipient);
	}
}
