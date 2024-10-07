#!/bin/bash

$source = 'Source.sol';

if ($source)
	solc -fo bin Source.bin Source.sol
	solc -fo abi Source.abi Source.sol
echo "$source doesn't exist";
fi
