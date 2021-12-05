// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract mappingStruct {
    
     struct Account {
        string userName;
        int balance;
        string phoneNumber;
        string currency;
    }
    
    
    mapping(address=>Account) public userAddresses;
    mapping(uint=>mapping(address=>Account)) public allUsers;
    
    //Set name and address
    
    function setUserAccount(uint _id,string  memory _useName,int _balance,string memory _phoneNum,string memory _currency)public{
        
        // userAddresses[msg.sender]=Account(_useName,_balance,_phoneNum,_currency);
        allUsers[_id][msg.sender] =Account(_useName,_balance,_phoneNum,_currency);
        
    }
    
    
    
    //Get Special Name with address
    
    function getUserAccount(uint _id)public view returns(Account memory){
        return allUsers[_id][msg.sender];
    }

    
}