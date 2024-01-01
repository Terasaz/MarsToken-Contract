# MarsToken-Contract
## How to create smart contract address on Redbelly Network Chain
1. Claim RBNT faucets → join their discord
2. Paste your wallet in #devnet-faucet
3. Then go to Remix IDE , create a new contract and call MarsToken.sol
4. Click on the new MarsToken.sol contract and copy and paste this code:
Use compiler version 

```solidity
pragma solidity 0.8.17;

// SPDX-License-Identifier: MIT

contract MarsToken { string public name = "MarsToken"; string public symbol = "Mars"; uint8 public decimals = 18; uint256 public totalSupply = 1000000000;

mapping (address => uint256) public balances; address public owner;

constructor() { owner = msg.sender; balances[owner] = totalSupply; }

function transfer(address recipient, uint256 amount) public { require(balances[msg.sender] >= amount, "Insufficient balance."); balances[msg.sender] -= amount; balances[recipient] += amount; } }   }
}
```

Then, after pasting the smart contract code, go to the solidity compiler click compile MarsToken.sol

-You will see a green check after it is done on the compile logo

-Go to Deploy & Transactions

-Change the environment to Injected -Provider and connect your - Metamask on the Redbelly Devnet 

-Then press Deploy and confirm the transaction on Metamask. 

-If you see "gas estimation failed",  just click Send Transaction. 

-After successful transaction copy your smart contract address then paste it on Redbelly Devnet Block explore to check your deployed contract
