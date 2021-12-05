// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract loopsArray{
    uint num = 10;
    //Index of arry start from Zero
    uint [] salaries = [1000,2000,400,4000,6000,7999,8898];
    uint [] public numbers ;
    
    uint bahaaSalary = salaries[2];
    
    //pop
    //push
    //delete
    
    function saveNumbers(uint _number) public{
        numbers.push(_number);
    }
    
    function removeLastOne()public {
        numbers.pop();
    }
    
    function getArrayLenght() public view returns(uint){
        return numbers.length;
    }
    
    function replaceAtindexWithZero(uint _index) public{
        
        delete numbers[_index];
    }
    

























    
    // //Start With For Loops
    
    
    // function numberIsFound(uint number) public view returns(bool){
    //     bool isExisted = false;
        
    //     for(uint start = 0;start<salaries.length;start++){
    //         //Code
    //         if(salaries[start]==number){
    //             isExisted = true;
    //         }
    //     }
        
    //     return isExisted;
    // }
    

}