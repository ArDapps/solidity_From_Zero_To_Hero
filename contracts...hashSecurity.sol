// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract HashSecurity{

    function hashData(string memory data)public view returns(bytes32 Hash){
        
        return sha256(bytes(data));
    }
  
}