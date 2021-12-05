// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "./Owner.sol";
import "./InterfacePayMethods.sol";

contract VolunteerContract is Owner, InterfacePayMethods {
  uint public numOfFunders;

  mapping(uint => address) private funders;

  modifier limitWithdraw(uint withdrawAmount) {
    require(
      withdrawAmount <= 100000000000000000,
      "Cannot withdraw more than 0.1 ether"
    );
    _;
  }




  function addFunds() override external payable {
    address funder = msg.sender;
   

    if (!funders[funder]) {
      uint index = numOfFunders++;
      funders[index] = funder;
    }



  function withdraw(uint withdrawAmount) override external limitWithdraw(withdrawAmount) {
    payable(msg.sender).transfer(withdrawAmount);
  }



  function getFunderAtIndex(uint8 index) external view returns(address) {
    return funders[index];
  }
}


// const instance = await Faucet.deployed();

// instance.addFunds({from: accounts[0], value: "2000000000000000000"})
// instance.addFunds({from: accounts[1], value: "2000000000000000000"})

// instance.withdraw("500000000000000000", {from: accounts[1]})

// instance.getFunderAtIndex(0)
// instance.getAllFunders()
