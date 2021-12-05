// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Functions {
    
    // uint256 a = 70;
    

    function addValues(uint256 number,uint256 a) public view returns(uint256){
       
        uint256 results = a + number;
        
        return results;
    }
   
    
}