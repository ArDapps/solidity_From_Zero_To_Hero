// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ifElse{
    
    
uint256 internal doorCount = 6; //state var
     
     
 
 function getNewDoorCount() external  pure returns(uint256){
     uint256 newCount = 130;
     return newCount;
 }
//  function showNewDoorCount() public pure returns(uint256){
//      return getNewDoorCount();
//  }
 
 
 
 
 
 
 
 
 function setDoorCount()public  returns (uint256){
      return doorCount = 200;
 }
     
    
    
    
}