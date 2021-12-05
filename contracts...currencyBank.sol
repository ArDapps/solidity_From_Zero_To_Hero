// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract currencyBank{
    
    
    //0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,50000 -2
    //0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c,85000 -3
    
    address public minter;
    
    mapping(address=>uint)public accounts;
    
    error noBalnce(uint amountRequsted,uint amountAvaliable);
    event Sent(address from,address receiver,uint amount);
    
    constructor(){
        minter = msg.sender;
    }
    
    //create the money for the first time 
    
    function mint(address receiver, uint amount)public{
        require(msg.sender ==minter);
        accounts[receiver] +=amount ;
        
    }
    
    //Send -(money found)
    
    function send(address receiver,uint amount)public{
        if(amount > accounts[msg.sender])
        revert noBalnce({
            amountRequsted:amount,
            amountAvaliable:accounts[msg.sender]
        });
        
        accounts[msg.sender] -= amount;
        accounts[receiver] +=amount;
        emit Sent(msg.sender,receiver,amount);
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}