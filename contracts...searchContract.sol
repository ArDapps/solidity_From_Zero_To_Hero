// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

library SearchLB{
    
    function indexAtSearch(int256 [] storage numbers,int256 value) public view returns(uint256){
        for(uint256 index = 0; index < numbers.length; index++){
            
            if(numbers[index] == value){
                return index;
            }
            
        }
    }
}
//Create contractMath

contract Table {
    
    using  SearchLB for int256[];
    
    int256 [] numbers;
    
    constructor() public{
        numbers.push(-100);//0
        numbers.push(-200);//1
        numbers.push(-300);//2
        numbers.push(400);//3
        numbers.push(500);//4

    }
    
    function numberIsFound(int256 _value) external view returns(uint256){
        uint result = numbers.indexAtSearch(_value);
        return result;
    }
}









