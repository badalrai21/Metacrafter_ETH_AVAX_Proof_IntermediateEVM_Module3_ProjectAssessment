// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BadalToken is ERC20, Ownable {
    
    constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable(msg.sender) {
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