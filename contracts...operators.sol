// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract operators{



function sum(int x,int y)  public  pure returns (int){
    
    return x+y;
}
    
    function multi(int x,int y)  public  pure returns (int){
    
    return x*y;
}

function div(int x,int y)  public  pure returns (int){
    
    return x/y;
}

function exponentiation(uint x,uint y)  public  pure returns (uint){
    
    return x**y;
}
}