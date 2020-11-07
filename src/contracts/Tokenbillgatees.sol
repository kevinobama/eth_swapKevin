pragma solidity ^0.5.0;

contract transferKevin{
    string  public name = "transferKevin";
    address payable wallet;

     constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function buyToken() public payable  {
        wallet.transfer(msg.value);      
    }
}