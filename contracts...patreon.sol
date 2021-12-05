// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Patreon {
    
  
     address public owner;
     
     address[]  public contributors;
    
     constructor() {
        owner = msg.sender;
    }
    
    function pay() payable public  {
        require(msg.value > 0.0001 ether);
        contributors.push(msg.sender);
    }
    
    function sendMoneyToOwner()public restricted {
        owner.transfer(this).balance;
        contributors = new address[](0);
    }
    
       modifier restricted() {
        require(msg.sender == owner);
        _;
    }
    
    
    function getcontributors() public view returns ( address []memory){
         return contributors;
    }

    
}