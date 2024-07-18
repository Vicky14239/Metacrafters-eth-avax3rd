# Metacrafters_eth+avax_3rd
# CustomToken Smart Contract

Customtoken is a simple ERC20 token implemented in Solidity. It includes basic functionalities such as minting, burning, and transfer, with ownership control.

## Overview

This smart contract, `CustomToken`, is an ERC20 token named "CUSTOM" with symbol "CST". It includes the following features:

- **Minting**: Only the contract admin can mint new tokens.
- **Burning**: Any token holder can burn their own tokens.
- **Transfer**: Standard ERC20 token transfer functionality with additional balance check.
- **pausing/unpausing**: Admin can pause and unpause all token transfers.

## Requirements

To interact with this smart contract, you need:
- A development environment with Solidity compiler (version 0.8.0 or higher).
- Access to an Ethereum-compatible blockchain for deployment and testing.
- Optionally, OpenZeppelin library for ERC20 token standards.
- Use remix IDE for implementation(https://remix.ethereum.org).

## Installation

To deploy this contract:
1. Clone the repository or download the source code.
2. Compile the `CustomToken.sol` file using Solidity compiler.
3. Deploy the compiled contract to your desired blockchain network.

## Usage

### Contract Deployment

Deploy the contract `CustomToken.sol` to an Ethereum-compatible blockchain using tools like Remix, Truffle, or Hardhat.

### Interacting with the Contract

- **Mint Tokens**: Call `createTokens(address recipient, uint256 quantity)`function to mint new tokens. Only the contract admin can call this function.
- **Burn Tokens**: Call `destroyTokens(uint256 quantity)` function to burn tokens from your own account.
- **Transfer Tokens**: Use the standard ERC20 `transfer(address recipient, uint256 quantity)` function to transfer tokens between addresses.
- **pause Transfers**: Call`pauseTransfers()` function to pause all token transfers. Only the contract admin can call this function.
- **Unpause Transfers**:  Call `unpauseTransfers()` function to unpause all token transfers. Only the contract admin can call this function.
### Example

Deploy the contract, then interact with it using a wallet or through a script that interacts with the contract functions.

## Security Considerations

- Ensure the contract owner address is secured and only accessible to authorized parties.
- Test thoroughly before deploying to a mainnet environment.


## Project by :

- VICKY KUMAR
