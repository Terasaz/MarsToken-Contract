// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract MarsToken { string public name = "MarsToken"; string public symbol = "Mars"; uint8 public decimals = 18; uint256 public totalSupply = 1000000000;

mapping (address => uint256) public balances; address public owner;

constructor() { owner = msg.sender; balances[owner] = totalSupply; }

function transfer(address recipient, uint256 amount) public { require(balances[msg.sender] >= amount, "Insufficient balance."); balances[msg.sender] -= amount; balances[recipient] += amount; } }   }
}
