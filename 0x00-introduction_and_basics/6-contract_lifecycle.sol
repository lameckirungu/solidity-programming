// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;

/**
 * @title Lifecycle
 * @dev Contract that demonstrates basic lifecycle functions.
 */


contract Lifecycle {

	address public creator;

	// Modifier to restrict access to the creator
	modifier onlyCreator() {
		require(msg.sender == creator, "Caller is not the creator");
		_;
	}
	// Constructor that sets the creator's address
	constructor() {
 		creator = msg.sender;
	}

	// Public function that can be called by anyone
	function publicFunction() public {}

	// Function that can only be called by the creator
	function creatorOnly() public onlyCreator {
		// logic
	}
}
