# Solidity Project: 0x00-Introduction and Basics

## Repository Structure
- Repository name: `solidity-programming`
- Project directory: `0x00-introduction_and_basics`

## Tasks

### 1. Hello, Solidity!
File: `1-hello_solidity.sol`

Write a Solidity smart contract named `HelloSolidity` that includes a function `sayHello()` which returns the string "Hello, Solidity!".

Requirements:
- Use Solidity version _0.8.0_ or higher
- The function should be public and view
- The contract should compile without any warnings

### Solution
[1-hello_solidity.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/1-hello_solidity.sol)

### 2. Solidity Compiler
File: `2-compile_solidity.sh`

Create a bash script that compiles a Solidity file named `Source.sol` and outputs the bytecode and ABI to separate files.

Requirements:
- Use solc for compilation
- Output bytecode to `Source.bin`
- Output ABI to `Source.abi`
- Handle errors if the source file doesn't exist

[2-compile_solidity.sh](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/2-compile_solidity.sh)

### 3. Simple Storage 
File: `3-simple_storage.sol`

Create a contract named `SimpleStorage` that can store and retrieve an unsigned integer.

Requirements:
- Include a function `set(uint256 x)` to store a value
- Include a function `get()` to retrieve the stored value
- Use appropriate visibility modifiers

[3-simple_storage.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/3-simple_storage.sol)

### 4. Basic Math
File: `4-basic_math.sol`

Write a contract named `BasicMath` that can perform addition, subtraction, multiplication, and division of two numbers.

Requirements:
- Implement functions: `add`, `subtract`, `multiply`, and `divide`
- Each function should take two _uint256_ parameters and return the result
- Handle division by zero in the `divide` function

[4-basic_math.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/4-basic_math.sol)

### 5. Address Basics
File: `5-address_basics.sol`

Create a contract named `AddressCheck` that can store an Ethereum address and check if it matches a specific address.

Requirements:
- Include a function to set the address
- Include a function to check if the stored address matches a given address
- Use appropriate data types for Ethereum addresses

[5-address_basics.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/5-address_basics.sol)

### 6. Contract Lifecycle
File: `6-contract_lifecycle.sol`

Write a contract named `Lifecycle` with a constructor, a function that can be called by anyone, and a function that can only be called by the contract creator.

Requirements:
- Store the creator's address in the constructor
- Implement a public function `publicFunction()` that anyone can call
- Implement a function `creatorOnly()` that only the creator can call
- Use appropriate modifiers

[6-contract_lifecycle.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/6-contract_lifecycle.sol)

### 7. Simple Event
File: `7-simple_event.sol`

Create a contract named `EventEmitter` that emits an event when a certain action is performed.

Requirements:
- Define an event named `ActionPerformed` with a string parameter `description`
- Implement a function `performAction(string memory description)` that emits the event
- The function should be _public_

[7-simple_event.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/7-simple_event.sol)

### 8. Payable Function
File: `8-payable_function.sol`

Write a contract named `Payments` with a payable function that can receive _Ether_.

Requirements:
- Implement a *_payable_* function named `deposit()`
- The function should *emit* an event `Deposit` with the sender's address and the amount sent
- Include a function to check the contract's balance

[8-payable_function.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/8-payable_function.sol)

### 9. Contract Balance
File: `9-contract_balance.sol`

Create a contract named `BalanceChecker` with a function that returns the balance of the contract.

Requirements:
- Implement a function `getBalance()` that returns the contract's balance in **wei**
- The function should be public and view
- Include a payable **_fallback_** function to allow the contract to receive Ether

[9-contract_balance.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/9-contract_balance.sol)

### 10. Self-destruct
File: `10-self_destruct.sol`

Write a contract named `Mortal` with a function that can **self-destruct** the contract and send remaining funds to a specified address.

Requirements:
- Store the creator's address in the constructor
- Implement a function `destroy(address payable recipient)` that can only be called by the creator
- The function should send all remaining funds to the specified recipient and then self-destruct the contract

[10-self_destruct.sol](https://github.com/lameckirungu/solidity-programming/blob/main/0x00-introduction_and_basics/10-self_destruct.sol)

## Submission Instructions

1. Create a new repository named `solidity-programming` if you haven't already.
2. Create a new directory in the repository named `0x00-introduction_and_basics`.
3. Add each task solution as a separate file in the `0x00-introduction_and_basics` directory, using the specified file names.
4. Ensure all your contracts compile without warnings using Solidity _version 0.8.0 or higher_.
5. Test each contract thoroughly before submission.
6. Commit your changes and push to your GitHub repository.
7. Submit the link to your repository for review.

Remember to include appropriate comments in your code and follow Solidity **best practices** throughout your solutions.
