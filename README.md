# BadalToken exchanging by ERC20 Token
# Metacrafter_ETH_AVAX_Proof_IntermediateEVM_Module3_ProjectAssessment

BadalToken is an ERC20 token built on the Ethereum blockchain, designed to facilitate token ```minting```, ```burning```, and ```transferring```. This smart contract is developed using Solidity and leverages the ```OpenZeppelin``` library to ensure security and best practices. The contract owner has the exclusive ability to ```mint``` new tokens, while all users can ```burn``` and ```transfer``` their tokens.


## Description
BadalToken is a custom ```ERC20``` token built with Solidity and leveraging OpenZeppelin's secure implementation. It supports essential functionalities such as minting, burning, and transferring tokens. The contract ensures that only the owner can ```mint``` new tokens, while all users can ```burn``` and ```transfer``` their tokens securely. This ```ERC20 token``` is designed to provide robust and efficient token management on the ```Ethereum blockchain```.

## Features
•  Minting Tokens: The contract owner has the authority to mint new tokens and assign them to any specified address. This functionality is critical for controlling the initial and subsequent distribution of tokens.  
•  Burning Tokens: Users can reduce the circulating supply by burning their tokens. This is useful for token management and maintaining value by controlling the total supply.  
•  Transferring Tokens: Users can securely transfer tokens to other addresses, ensuring smooth and efficient token transactions within the ecosystem.  

## Technology Stack
•  Solidity: Utilized for writing and deploying smart contracts.  
•  OpenZeppelin: A set of secure and community-reviewed smart contracts used for the implementation of the ERC20 standard.  
•  Hardhat: A comprehensive development environment for compiling, deploying, testing, and debugging Ethereum software.  

## Getting Started

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/) (https://remix.ethereum.org/).  

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., BadalToken.sol). Copy and paste the following code into the file:  

### Prerequisites  
• A web browser with access to Remix IDE.  
• A web3 provider like MetaMask for interacting with the deployed contract.  

### Steps
#### • Open Remix IDE:  
Navigate to Remix IDE in your web browser.  

#### • Create a new file:  
In the Remix file explorer, create a new file named BadalToken.sol.  

#### • Add the contract code:  
Copy and paste the following code into BadalToken.sol:  

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BadalToken is ERC20, Ownable {

    constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable() {
    }

    function MintTokens(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
    }

    function BurnTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient tokens to burn");
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(balanceOf(msg.sender) >= amount, "Insufficient tokens to transfer");
        return super.transfer(recipient, amount);
    }
}

```
## Executing the Program   
## Compiling the Code  
➛  In the Remix IDE, navigate to the "Solidity Compiler" tab on the left sidebar.  
➛  Select the appropriate compiler version (0.8.26).  
➛  Click on the "Compile BadalToken.sol" button.  

## Deploying the Contract
➛  Deploy the contract:  
➛  Navigate to the "Deploy & Run Transactions" tab on the left sidebar.  
➛  Ensure the "Environment" is set to "Injected Web3" to use MetaMask or another web3 provider.  
➛  Select the BadalToken contract from the dropdown menu.  
➛  Enter the constructor parameters (name and symbol) in the input fields.  
➛  Click the "Deploy" button and confirm the transaction in MetaMask.    
  
### Interacting with the Contract
#### 1. Minting Tokens:  
    Only the contract owner can mint new tokens.
  
➝ In the "Deployed Contracts" section, expand the BadalToken contract.  
➝ Locate the MintTokens function.  
➝ Enter the recipient address and amount, then click "transact" and confirm the transaction in MetaMask.  

#### 2. Burning Tokens:
    Any user can burn their tokens.
      
➝ Locate the BurnTokens function.    
➝ Enter the amount of tokens to burn, then click "transact" and confirm the transaction in MetaMask.     

#### 3. Transferring Tokens:
    Any user can transfer tokens to another address.  

➝ Locate the transfer function.    
➝ Enter the recipient address and amount, then click "transact" and confirm the transaction in MetaMask.  

## Help
If you encounter any issues or have questions about this project, there are several resources available to assist you:

### Documentation
1.  Solidity Documentation: Comprehensive documentation for the Solidity programming language, including syntax and features. Visit Solidity Documentation.  
2.  Remix Documentation: Learn how to use Remix, the online Solidity IDE, with detailed guides and examples. Visit Remix Documentation.  
3.  OpenZeppelin Documentation  


##### Common Issues
##### 1. Insufficient Gas:

➝ Ensure you have enough Ether in your account to cover the transaction gas fees.  
➝ Try increasing the gas limit for your transaction.  
##### 2. Compiler Errors:

➝ Verify that you are using a compatible Solidity compiler version (e.g., 0.8.26).  
➝ Double-check your contract code for syntax errors.  
##### 3. Deployment Issues:

➝ Make sure you are connected to the correct Ethereum network (e.g., Mainnet, Ropsten, Rinkeby).  
➝ Ensure your Ethereum wallet is unlocked and has sufficient funds.  

### FAQs
1. What is BadalToken?    
A: BadalToken is a custom ERC20 token built using Solidity and OpenZeppelin's secure contract libraries. It supports essential functionalities such as minting, burning, and transferring tokens.

2. What happens if I try to transfer or burn more tokens than I have?  
A: The contract includes a balance check to ensure users have sufficient tokens before transferring or burning. If you try to transfer or burn more tokens than you have, the transaction will revert with an "Insufficient tokens" error.

3. Is the BadalToken contract secure?  
A: The BadalToken contract is built using OpenZeppelin's secure and community-reviewed libraries. However, it's always recommended to conduct further security audits and reviews, especially for production deployments.

4. What are the benefits of using OpenZeppelin libraries?
A: OpenZeppelin libraries provide a secure and community-reviewed set of contracts for building decentralized applications. They follow best practices and are regularly updated to address security vulnerabilities, making them a reliable choice for smart contract development.

5. Can I interact with BadalToken using other Ethereum wallets?  
A: Yes, you can interact with BadalToken using any Ethereum wallet that supports ERC20 tokens. This includes wallets like MetaMask, Trust Wallet, MyEtherWallet, and more.


### Contact
If you need further assistance, feel free to reach out:

Email: badalrai242@gmail.com  
GitHub Issues: Report issues or suggest enhancements on our GitHub Issues page.  

#### Community  
Join the community to discuss the project and get help from other user:
LinekdIn: [@BadalRai](https://www.linkedin.com/in/badal-kumar-rai-a0151b259/)  
Discord: Join our Discord Server [@NO2](https://discord.gg/Dnw4ZjEg)    
We hope this information helps you get the most out of our Hotel Management Smart Contract project. If you have any feedback or suggestions, please let us know!

## Authors

Badal Kumar Rai                                                                                                                        
[@BadalRai](https://www.linkedin.com/in/badal-kumar-rai-a0151b259/)

## License

This project is licensed under the Apache 2.0 License - see the LICENSE.md file for details    
> **Note**: This content is proprietary and confidential. Unauthorized copying, modification, distribution, or use of this content is strictly prohibited without explicit permission from the owner.


##### Copyright (c) 2024 Badal Kumar Rai

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
