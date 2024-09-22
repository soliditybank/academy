//SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract Mapping {

    mapping(address => uint) public balances; // token balances
    mapping(address => mapping(address => uint)) public allowances; // Owner allows Spender to spend amount of tokens

    constructor () {
        balances[msg.sender] = 10;
    }

    function transfer(address recipient, uint amount) public {
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    function approve(address spender, uint amount) public {
        allowances[msg.sender][spender] = amount;
    }

}
