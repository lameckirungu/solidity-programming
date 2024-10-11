# Solidity Project: 0x01-Variables, Data Types, and Operators

## Repository Structure
- Repository name: `holberton-solidity-programming` (same as before)
- Project directory: `0x01-variables_data_types_operators`

## Tasks

### 1. Integer Operations
File: `1-integer_operations.sol`

Create a contract named `IntegerOps` that demonstrates various integer operations.

Requirements:
- Implement functions for addition, subtraction, multiplication, and division of uint256 types
- Include a function to demonstrate overflow and underflow (comment out the check to show what would happen without SafeMath)
- Use Solidity version 0.8.0 or higher (which includes built-in overflow checks)

### 2. Boolean Logic
File: `2-boolean_logic.sol`

Write a contract named `BooleanLogic` that implements basic boolean operations.

Requirements:
- Implement functions for AND, OR, NOT, and XOR operations
- Include a function that takes three boolean inputs and returns the result of a complex boolean expression

### 3. Address Manipulation
File: `3-address_manipulation.sol`

Create a contract named `AddressManipulation` that works with Ethereum addresses.

Requirements:
- Implement a function to check if an address is a contract
- Include a function to send a small amount of Ether to an address
- Implement a function to get the balance of an address

### 4. String Concatenation
File: `4-string_concatenation.sol`

Write a contract named `StringOps` that performs string operations.

Requirements:
- Implement a function to concatenate two strings
- Include a function to calculate the length of a string
- Implement a function to convert a string to lowercase (you may use assembly for this)

### 5. Bytes and Arrays
File: `5-bytes_and_arrays.sol`

Create a contract named `BytesAndArrays` that demonstrates working with bytes and arrays.

Requirements:
- Implement functions to work with fixed-size byte arrays (bytes1 to bytes32)
- Include functions to work with dynamic byte arrays (bytes)
- Demonstrate the difference between storage and memory arrays

### 6. Type Casting
File: `6-type_casting.sol`

Write a contract named `TypeCasting` that shows various type casting operations in Solidity.

Requirements:
- Implement functions to cast between different integer types
- Include a function to cast between address and uint160
- Demonstrate explicit and implicit type casting

### 7. Constants and Immutables
File: `7-constants_immutables.sol`

Create a contract named `ConstantsImmutables` that uses constants and immutable variables.

Requirements:
- Define at least one constant and one immutable variable
- Implement functions that use these variables
- Demonstrate the gas savings of using constants and immutables

### 8. Global Variables
File: `8-global_variables.sol`

Write a contract named `GlobalVars` that works with Solidity's global variables.

Requirements:
- Implement functions that use block.timestamp, msg.sender, and msg.value
- Include a function that uses block.number and block.difficulty
- Demonstrate the use of tx.gasprice and gasleft()

### 9. Operator Precedence
File: `9-operator_precedence.sol`

Create a contract named `OperatorPrecedence` that demonstrates operator precedence in Solidity.

Requirements:
- Implement functions with complex arithmetic expressions
- Include functions with complex boolean expressions
- Demonstrate how parentheses can change the result of an expression

### 10. Custom Types
File: `10-custom_types.sol`

Write a contract named `CustomTypes` that defines and uses custom types.

Requirements:
- Define a struct to represent a Person (with properties like name, age, and address)
- Implement an enum to represent days of the week
- Include functions that use both the struct and enum types

## Submission Instructions

1. If you haven't already, clone your `solidity-programming` repository.
2. Create a new directory in the repository named `0x01-variables_data_types_operators`.
3. Add each task solution as a separate file in the `0x01-variables_data_types_operators` directory, using the specified file names.
4. Ensure all your contracts compile without warnings using Solidity version 0.8.0 or higher.
5. Test each contract thoroughly before submission.
6. Commit your changes and push to your GitHub repository.
7. Submit the link to your repository for review.

Remember to include appropriate comments in your code explaining the purpose of each function and any complex logic. Also, consider gas optimization where applicable and follow Solidity best practices throughout your solutions.

## Additional Notes

- Pay attention to the data types you use and their limitations.
- Be aware of potential security issues, especially when dealing with integer overflow/underflow (although Solidity 0.8.0+ includes built-in checks).
- When working with addresses, remember the differences between address and address payable types.
- For string operations, keep in mind that Solidity doesn't have native string manipulation functions, so you might need to use workarounds or assembly in some cases.
- When demonstrating operator precedence, try to create examples that clearly show how different orderings can affect the result.
