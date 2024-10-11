// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store token details
    string public tokenName = "MyToken";  // Token Name
    string public tokenAbbrv = "MTK";     // Token Abbreviation
    uint public totalSupply = 0;          // Total Supply

    // Mapping to store balances of each address
    mapping(address => uint) public balances;

    // Mint function to increase total supply and update balance of the given address
    function mint(address _address, uint _value) public {
        totalSupply += _value;  // Increase total supply
        balances[_address] += _value;  // Increase the balance of the given address
    }

    // Burn function to reduce total supply and the balance of the given address
    function burn(address _address, uint _value) public {
        // Ensure the address has enough tokens to burn
        require(balances[_address] >= _value, "Insufficient balance to burn");

        totalSupply -= _value;  // Decrease total supply
        balances[_address] -= _value;  // Decrease the balance of the given address
    }
}
