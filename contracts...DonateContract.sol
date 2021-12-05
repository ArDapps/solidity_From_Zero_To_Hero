// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "./IpaymentMethods.sol";

contract Donate is IpaymentMethods {
    
    uint public founderId;
    
    mapping (uint=>address) private funders;
    
    mapping (address=>bool) private savedfunders;

    modifier accounthasBalnce(){
        require((msg.sender.balance)>0,"You Dont have Money,Recharge");
        _;
    }
    
    function addFunds() override external accounthasBalnce payable {
        
        address funder = msg.sender;
        
        if(!savedfunders[funder]){
            founderId++;
            funders[founderId] = funder;
            savedfunders[funder] =true;
        }
        
    }
    
    function getFounderAtIndex(uint _index) external view returns(address){
        return funders[_index];
    }
    
  
  
  
  
  
  
  
  
  
  
  
}