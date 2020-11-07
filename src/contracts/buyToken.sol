pragma solidity 0.5.1;

contract Buytoken {
    string  public name = "Buytoken";    
    mapping(address => uint256) public balances;
    address payable wallet;

     constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function buyToken() public payable  {
        balances[msg.sender] +=1;
        wallet.transfer(msg.value);      
    }

    function buyTokenOne() public payable  {
        //balances[msg.sender] +=1;
        wallet.transfer(3);      
    }

    function buyTokenTwo(address payable walletOne) public payable  {
        walletOne.transfer(3);      
    }
}