// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title CustomTypes
 * @dev Defines and uses custom data types.
 */

contract CustomTypes {
	struct Person {
		address public addr;
		uint256 public age;
		string public name;
	}
	Person[] people;

	function setPerson(address _addr, uint256 _age, string memory _name) public view {
		people.push(Person({
			addr = _addr;
			_age = _age;
			name = _name;
		}));
	}

	function getPerson(uint256 index) public view returns (address, uint256,string memory) {
		require(index < people.length, "Person does not exist");
		Person memory person = people[index];
	
		return (person.addr, person.age, person.name);
	}

	enum DaysOfTheWeek = { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
	/**
	 * @dev Sets the current day of the week.
	 * @param _day The day of the week (0 for Monday, 6 for Sunday).
	 */
	function setToday(DaysOfTheWeek _day) public {
		today = _day;
	}

	function getToday() public view returns (DaysOfTheWeek) {
		return today;
	}
}
