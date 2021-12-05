// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract car {
   
   //Satrt the First Hello Contract 
   //Variable
   
   /*
   CareName,
   CarModel,
   RedCar?
   
   */
   
   //Type Name = Value ;
   
   //Types :String,integer,Boolean
   
   //Name: CareName,CarModel,RedCar?
   
   //Value:Haund,2019,ture/false
   
   string careName = "Haunda";
   uint256 carModel = 1990;
   
   uint256 firstAmount = 800;
   uint256 secondAmount = 900;

   bool redCar = false;
   
   uint256 total = firstAmount + secondAmount;
   
   
   function carOpen(bool isOpen) public returns(bool){
       //Script
       return isOpen;
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
}