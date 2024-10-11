// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title GlobalVars
 * @dev Demonstrates usage of solidity's global variables.
 */

contract GlobalVars {
	// Storing sender info

	address public lastSender;
	uint256 public lastValueSent;
	uint256 public lastGasPrice;
	uint256 public lastBlockNumber;
	uint256 public lastBlockTimestamp;
	uint256 public lastGasLimit;
	bytes public lastCalldata;
	bytes4 public lastFunctionSignature;
	uint256 public lastBlockDifficulty;
	uint256 public blockBaseFee;
	address public coinbase;
	uint256 public chainId;

	// Fallback function to capture global variables during a plain transaction
	receive() external payable {
		lastSender = msg.sender;	// Address of sender of the message
		lastValueSent = msg.value;	// Amount of wei sent with the message	
		lastGasPrice = tx.gasprice;	// Gas price of the Tx
		lastBlockNumber = block.number;
		lastBlockTimestamp = block.timestamp;
		lastGasLimit = block.gaslimit;	// Gas limit of the current block
		lastCalldata = msg.data;
		lastBlockDifficulty = block.difficulty;
		blockBaseFee = block.basefee;
		coinbase = block.coinbase;	// current block miner's address
		chainId = block.chainid;	// Chain ID of the network
	}

	fallback() external payable {
		lastFunctionSignature = msg.sig; // First 4 bytes of calldata
		lastCalldata = msg.data;	// Full calldata
	}

	function gasInfoDemo() public view returns (uint256 remainingGas) {
		remainingGas = gasleft();
	}

	function blockInfoDemo() public view returns (uint256 blockNumber, uint256 blockTimestamp, uint256 blockDifficulty, uint256 baseFee, address miner) {
		blockNumber = block.number;
		blockTimestamp = block.timestamp;
		blockDifficulty = block.difficulty;
		baseFee = block.basefee;
		miner = block.coinbase;
	}

	function txInfoDemo() public view returns (address txOrigin, uint256 txGasPrice)
	{
		txOrigin = tx.origin;
		txGasPrice = tx.gasprice;
	}

	function messageInfoDemo() public view returns (address sender, uint256 valueSent, bytes memory fullData) {
		sender = msg.sender;
		value = msg.value;
		fullData = msg.data;
	}

	function getBlockHash(uint256 blockNumber) public view returns(bytes32) {
		require(blockNumber < block.number, "Invalid block number");
		return blockhash(blockNumber); // Get the blockhas of a specific block
	}

	function getGasLeft() public view returns (uint256) {
		return gasleft();
	}

	function originAndSender() public view returns (address origin, address sender) {
		origin = tx.origin; // Original external account that initiated the Tx
		sender = msg.sender; // Account that directly called this function
	}
}
