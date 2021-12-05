// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract constOOP{
    // string  public firstName = "ardapps.com";
    
    // constructor(string  memory _firstName){
        
    //     firstName = _firstName;
        
    // }
    //Start WIth struct

    
    struct Account {
        string userName;
        int balance;
        string phoneNumber;
    }
    
    Account bahaaAccount;
    
    
    function createAccount()public {
       bahaaAccount = Account("BahaaTaha",1000,"096656565656");
    }
    
    function getUserName()public view returns(int ){
        
        return bahaaAccount.balance;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//     //Start WIth Enum
    
//     enum Languages {Arabic,English,Frensh}
    
//   Languages  constant defaultLanguage = Languages.English;
//   Languages public choice;

    
//     function mychoice() public{
//       choice = Languages.Frensh; 
//     }
    
//     function getDefaultLanguage ()  public view returns(uint){
//         uint myDefaultINdex = uint(defaultLanguage);
//         return myDefaultINdex;
//     }
}

