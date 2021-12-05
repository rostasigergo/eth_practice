// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import "./5_MathLib.sol";


contract MyContract {
    uint256 public value;

    function calculate(uint _value1, uint _value2) public  {
        value = Math.divide(_value1, _value2);
    }
}
