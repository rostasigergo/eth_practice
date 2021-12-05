// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import "./6_SafeMath.sol";


contract MyContract {
    using SafeMath for uint256;

    uint256 public value;

    function calculate(uint _value1, uint _value2) public  {
        value = _value1.mul(_value2);
    }
}
