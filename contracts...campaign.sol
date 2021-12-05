// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.7.0;



contract CampaignFactory{
    Campaign []  public deployedCampaigns;
  
    function createCampaign (uint minium )  public{
        Campaign  newCampaign  = new Campaign(minium, msg.sender);
        deployedCampaigns.push(newCampaign);

    }
    
    function getDeployedCampaign() public view returns( Campaign [] memory ) {

        return deployedCampaigns;
    }
}

contract Campaign {
    
    
  mapping(address=>bool) approvals;


    struct Request{
        string  description;
         uint value;
         address payable recipient;
         bool complete;
         uint approvalCount;

    }
    


         Request [] public requests;
        address public manager;
        
        uint public minimumContributionMoney;
        
      mapping (address=>bool) public approvers;
      uint public approversCount ;
            
     
            
    constructor(uint minimum,address creator) public{
        manager = creator;
        minimumContributionMoney = minimum;
        
        
    }
    
    modifier restricted(){
        require(msg.sender == manager);
        _;
    }
    
    
    
    function contribute() public payable {
        require(msg.value >= minimumContributionMoney);
        approvers[msg.sender] = true;
        approversCount ++;
    }
    
    
    function createRequest(string  memory description,uint value,address payable recipient) public restricted{
  Request memory newRequest = Request ({
           description: description,
           value:value,
           recipient : recipient,
           complete:false,
           approvalCount: 0
        });
        
        requests.push(newRequest);
    }
    
    
    function approverequest(uint index)public{
        Request storage request = requests[index];
        
        require(approvals[msg.sender]);
        require(!approvals[msg.sender]);
        
       approvals[msg.sender] = true;
        request.approvalCount++;
        
    }
    
    function finalizeRequest(uint index)  public restricted{
        Request storage request = requests[index];
        require(request.approvalCount >(approversCount/2));
        require(!request.complete);
        request.recipient.transfer(request.value);
        request.complete=true;
        
    }

    function getCampaignSumery () public view  returns(uint,uint,uint,uint,address){
        return(
            minimumContributionMoney,
              address(this).balance,
            requests.length,
            approversCount,
            manager
        );
    }
    
    function getRequestsCount()public view returns(uint){
        return requests.length;
    }
    
}