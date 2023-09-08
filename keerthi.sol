// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyTokenKeerthi {

    // Public variables 
    string public token_name = "KEERTHI";
    string public token_abbrv = "KEER";
    uint256 public total_supply = 10000;

    // Mapping of addresses to balances
    mapping(address => uint256) public balance;

    // Mint function 
    function mint(address mint_add, uint256 mint_val) public {
        total_supply += mint_val;
        balance[mint_add] += mint_val;
    }

    // Burn function
    function burn(address burn_add, uint256 burn_value) public {
        require(balance[burn_add] >= burn_value ,"Insufficient balance to burn");
        
        total_supply -= burn_value;
        balance[burn_add] -= burn_value;
    }
}
