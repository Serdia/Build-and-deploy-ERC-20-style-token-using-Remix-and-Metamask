# MyToken (OLG)

A simple ERC-20–style token deployed on the Ethereum blockchain (Sepolia Testnet).  
This project was created in Remix and deployed via MetaMask.

## Features

- Custom token name: `OleggyToken`
- Symbol: `OLG`
- Decimals: 18
- Total supply set at deployment
- Ability to transfer tokens between wallets
- Balance tracking per address
- Blockchain event logging for transfers

## Contract Code

The Solidity contract is located in `contracts/MyToken.sol`.

### Key Functions

- `constructor(uint _initialSupply)`: Mints `_initialSupply` tokens to the deployer's wallet.
- `balanceOf(address account)`: Returns the token balance of an address.
- `transfer(address to, uint amount)`: Sends `amount` tokens from the caller to another address. Emits a `Transfer` event.

## How to Deploy

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Paste the contract into a new Solidity file `MyToken.sol`.
3. Compile with Solidity version `0.8.30`.
4. Connect your MetaMask wallet.
5. Deploy the contract with your chosen initial supply.
6. Interact with the contract via Remix or your wallet.

## Demo

(Optional: Include screenshots of the deployed contract, token transfer, or MetaMask balance changes.)

## License

This project is licensed under MIT.
