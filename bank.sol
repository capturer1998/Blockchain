pragma solidity 0.5.14;
contract BankAccount
{
    int bal;
    constructor() public
    {
        bal=1;
    }
    
    function balance() view public returns (int)
    {
        return bal; 
    } 
    
    function deposit(int a) public
    {
        bal=bal+a;
    }
    
    function withdraw(int a) public
    {
        bal=bal-a;
    }
}
