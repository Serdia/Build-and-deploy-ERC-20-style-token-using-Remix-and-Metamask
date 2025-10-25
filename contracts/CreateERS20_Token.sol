

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MyToken {
    string public name = "OleggyToken";
    string public symbol = "OLG";
    uint8 public decimals = 18; // standard number of decimals
    uint public totalSupply;

    // create a table (or dictionary) that links each wallet address to its token balance
    mapping(address => uint) public balances; 

    // logs(records) on a blockchain every change happenned
    event Transfer(address indexed from, address indexed to, uint value);

    // The "constructor" mints the total number of tokens and assigns them all to the creator’s wallet
    constructor(uint _initialSupply) { // the amount of tokens you want to create (you pass it when deploying)
        totalSupply = _initialSupply * (10 ** uint(decimals));
        balances[msg.sender] = totalSupply; // initially, the deployer gets all the tokens
    }

    function balanceOf(address account) public view returns (uint) {
        return balances[account];
    }

    // function "transfer" is about how tokens move between wallets
    // "address to" — the recipient’s wallet address
    // uint amount — how many tokens to send
    // returns (bool) — returns true if the transfer succeeds, per ERC-20 standard
    // msg.sender = the wallet calling this function (the sender). It ensures they have enough tokens to send.If not, the transaction reverts — the blockchain undoes everything and throws the error "Not enough balance".
    // "balances[msg.sender] -= amount" - decreases the sender's balance in the mapping
    // "balances[to] += amount" - increases the receipient's balance
    // "emit" - gets recorded in blockchain logs

    function transfer(address to, uint amount) public returns (bool) { 
        require(balances[msg.sender] >= amount, "Not enough balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount);
        return true;
    }
}
