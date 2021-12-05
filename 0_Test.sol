// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

enum State { Waiting, Ready, Active }

struct Person {
    string _firstName;
    string _lastName;
}

contract MyContract {
    string public value = "myVal";
    uint public myUInt = 1;
    Person[] public people;
    uint256 public peopleCount;
    uint256 public peopleCount2;

    mapping(uint => Person) public people2;

    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool) {
        return state == State.Active;
    }

    function set(string memory _value) public {
        value = _value;
        myUInt -= 1;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }

    function addPerson2(string memory _firstName, string memory _lastName) public {
        peopleCount2 += 1;
        people2[peopleCount2] = Person(_firstName, _lastName);
    }

}
