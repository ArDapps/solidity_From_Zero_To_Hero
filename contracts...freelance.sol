pragma solidity >=0.7.0 <0.9.0;


contract Freelance {
    
    uint256 numm = 10;
    
    modifier onlyPerson(){
       require(numm >8,"Number Must be Greater than 8") ;
        _;
    }
 
 //struct

 struct person {
     string name;
     uint256 id;
     bool success;
 }
    
  person bahaa = person("bahaa Ehab taha",1,true);
  
  string [] names = ["bhaa","Ali"];
  
  
  //mapping (Dic)
  
  mapping(address=>person) public persons;
  
  //Storage,memory,CallData
  
  //event
  

  
  event personEvent (
    string name,
     uint256 id,
     bool success
  );



    
    
}
