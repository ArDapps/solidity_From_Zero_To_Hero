
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract dataMemory{

    string public name = "Arabic ket\"s,Dapps"; //'' ""

        function setName(string memory _name) public returns(string memory){
            require(bytes(_name).length >0,"Name Should Be char or More");
            name = _name;
            
            return name;
        }
        
        
        
        

        function getStringLen()public  view returns(uint){
            
            bytes  memory convertString = bytes(name);
            
            return convertString.length;
        }
}