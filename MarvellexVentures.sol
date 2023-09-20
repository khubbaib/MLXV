// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MarvellexVentures is ERC20, ERC20Burnable, Ownable {
   
    constructor(address initalAccount) ERC20("Marvellex Ventures", "MLXV") {
        require(initalAccount != address(0), "Initial Account is the zero address");
        _mint(initalAccount, 80000000000 * 10 ** decimals());
    }
    
}