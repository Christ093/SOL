
# MyToken Solidity Smart Contract

## Description
This is a simple ERC20-like token smart contract written in Solidity. The contract allows minting and burning tokens, and keeps track of the total supply and the balances of each account.

## Features
- Public variables to store:
  - **Token Name**: Name of the token (`MyToken`).
  - **Token Abbreviation**: Token symbol (`MTK`).
  - **Total Supply**: The total number of tokens in circulation.
- A mapping to store the balances of each address.
- A `mint` function that allows creating new tokens and adding them to the total supply and a specific address's balance.
- A `burn` function that allows destroying tokens from a specific address, reducing both the total supply and the address's balance, with a condition to ensure sufficient balance exists.

## Functions
### 1. `mint(address _address, uint _value)`
- **Purpose**: Mints new tokens by increasing the total supply and the balance of the provided address.
- **Parameters**:
  - `_address`: The address that will receive the minted tokens.
  - `_value`: The number of tokens to be minted.
- **Returns**: None.
- **Updates**:
  - Increases the total supply of tokens.
  - Increases the balance of the given address.

### 2. `burn(address _address, uint _value)`
- **Purpose**: Burns tokens by reducing the total supply and the balance of the provided address.
- **Parameters**:
  - `_address`: The address from which tokens will be burned.
  - `_value`: The number of tokens to be burned.
- **Returns**: None.
- **Updates**:
  - Decreases the total supply of tokens.
  - Decreases the balance of the given address.
- **Conditions**:
  - Ensures the address has enough tokens to burn, otherwise, the transaction will revert.

## Usage
1. Clone the repository and deploy the `MyToken` contract in a Solidity development environment (e.g., Remix, Truffle).
2. Use the `mint` function to add tokens to an address.
3. Use the `burn` function to destroy tokens from an address, ensuring the address has enough balance.

## Example
Here is an example interaction with the contract:

1. Minting tokens:
   ```solidity
   mint(0x123...abc, 100);

This will mint 100 tokens to the address 0x123...abc and increase the total supply by 100

2. Burning tokens:
   ```solidity
   burn(0x123...abc, 100);

This will burn 50 tokens from the address 0x123...abc and reduce the total supply by 50, assuming the address has at least 50 tokens.

