// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    constructor(string memory _name) {
        name = _name;
    }

    function mint() virtual public {
        balances[tx.origin]++;
    }
}

contract MyToken is ERC20Token {
    string public symbol;
    address[] public owners;
    uint256 ownerCount;


    constructor(
        string memory _name,
        string memory _symbol
    )
        ERC20Token(_name)
        public
    {
        symbol = _symbol;
    }

    function mint() override public {
        super.mint();
        ownerCount++;
        owners.push(msg.sender);
    }

}
