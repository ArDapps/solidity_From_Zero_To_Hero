pragma solidity >=0.7.0 <0.9.0;

contract FunctionFt {
    
    uint256  public num ;
    
    constructor(uint256 _num){
        num = _num;
    }
    
    
    function sumNumbers (uint256 _num)  public returns(uint256) {
        num =_num;
      return num ;
        
    }
    
}