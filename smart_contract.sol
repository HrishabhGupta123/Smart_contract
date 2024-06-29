/*
Write a smart contract that implements the require(), assert() and revert() statements.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract smart_contract
{
    
    uint public bal = 0;

    // we cannot withdraw more than we have as balance 
    function withdraw(uint amount) public   {
        require(bal > amount, "We cannot proceed your transaction as you do not have enough balance to transfer!");
        bal -= amount;
    }

    //Cannot deposit if balance results in value greater than 500
    function deposit(uint amount) public   {
        bal += amount;
        if (bal > 500) {
            revert("Opps ! Your balance is exceeding the limit!");
        }
    }

    //Checks if the balance is equals to zero
    function isempty() public view returns (string memory){
        assert(bal == 0);
        return "Sorry! You have no money for the transaction.";
    }

}
