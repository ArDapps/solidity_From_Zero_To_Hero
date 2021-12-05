// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract sendValues{
    
    mapping(address=>uint) public balnces;
    function addValue(uint _value) public {
        balnces[msg.sender ] = _value;
    }
    
}

contract ExtraCoins {
    
    function addExtraValue () public{
    sendValues sendValues = new sendValues();
    sendValues.addValue(50);
    }
    
}