// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title EventEmitter
 * @dev emits an event when a certain action is performed.
 * @param description Describe the action being performed
 */

 contract EventEmitter {
	// Event declaration
	 event ActionPerformed(string description);

	 function performAction(string memory _description) public {
		emit ActionPerformed(_description);
	 }
 }
