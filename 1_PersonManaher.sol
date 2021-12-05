// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

struct Person {
    uint _id;
    string _firstName;
    string _lastName;
}

contract PersonManager {
    uint256 public peopleCount;
    mapping(uint => Person) public people;

    address owner;

    // https://www.epochconverter.com/
    uint openingTime = 1638045439;

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not owner!");
        _;
    }

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime, "Not open yet");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addPerson(
        string memory _firstName,
        string memory _lastName
    )
        public
        onlyOwner
        onlyWhileOpen
    {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

}
