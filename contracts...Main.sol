// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract Main{
    uint  public data;
    
    constructor(){
        data = 20;
    }
}

contract child is Main{
    Main private m;
    m.data =30;
}