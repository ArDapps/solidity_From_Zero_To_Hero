
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EventFallback{
    
    event Log(uint256 gasLeft);
    
    fallback() external payable{
        
        emit Log(gasleft());
    }
    
    uint  balnce;
    
    function getContractBalnce() public view returns (uint){
      
         return address(this).balance ;
    }
    
   
}

contract senMoneyBetweenUs {
    
    
    function sendMoney(address payable _to) public payable {
        // _to.transfer(msg.value);
       (bool sucess,)  = _to.call{value:msg.value}('');
       
       require(sucess,"Faild To send MOney");
    }
    

    

    
}