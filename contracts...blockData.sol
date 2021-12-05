
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Owner{
    
    address manager;
    
    constructor () public {
        manager =msg.sender;
    }
    
    modifier onlyManager{
        require(msg.sender ==manager,"The amanger only can access this data");
        
        
        _;
    }
    
}

contract blockData is Owner {
    
   mapping(address=>uint)  public balnces;


function setData( uint _value) public {
    
   balnces[msg.sender] = _value;
    
}   

function changeValue(uint _value) public onlyManager {
    
    balnces[msg.sender] = _value;
}


}