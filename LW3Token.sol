// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This line import ERC-20 token standard from OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// "is" means instance of ERC20. So we are going to extend ERC20.
contract LW3Token is ERC20 {
    // This constructor called only when smart contract is deployed. _name and _symbol is for our cryptocurrency.Ex. name is Ethereum and symbol is ETH
    // After that, we specified the function like ERC20.
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        // _mint is internal function within ERC20.And this function to mint receive some tokens.
        // _mint takes 2 arguments; address to mint to and amount of tokens.
        // msg.sender is address which made transaction. when you deployed your contract, your addres will be there in msg.sender.
        // 10 * 10 ** 18 means 10 full tokens
        // ERC20 tokens by default work with 18 decimal places. So 1 full LW3Token in this case, is actually represented as 10 ^ 18. Therefore, to get 10 full LW3Tokens, we use 10 * 10 ** 18
        _mint(msg.sender, 10 * 10 ** 18);
    }
}
