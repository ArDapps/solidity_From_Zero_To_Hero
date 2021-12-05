// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract requireStudy {
    
    uint256 a = 20;
    uint256 b = 30;


function getNumbers()public view returns (uint256){
   
   if(!(a>b) && b>20){
       
       return 100;
   }else {
       
       return 500;
   }
}
    
    
}