# Flow Fungible Token Project Repository

Welcome to the repository for the Flow Fungible Token Project. This project is focused on developing an extensive Fungible Token smart contract for the Flow blockchain. This repository contains a collection of transactions and scripts that cover a wide range of functionalities related to token management and operations.

## Core Contract Implementation

### Contract: FlowToken
- Features an owner-controlled process for token minting.
- Incorporates a Vault resource for managing token balances.
- Includes a comprehensive set of transactions and scripts for effective token management.

#### Code Insights:
- Showcases the Vault resource's deposit function for secure token transactions and to avoid double-spending issues.

### Fundamental Transactions and Scripts

#### Transactions:
- **MINT:** Allows for the creation of tokens for specified recipients.
- **SETUP:** Simplifies setting up a user's vault in their account storage.
- **TRANSFER:** Facilitates the movement of tokens between different addresses.

#### Scripts:
- **READ BALANCE:** Fetches the token balance from a user’s vault.
- **SETUP VALIDATION:** Ensures a vault has been set up correctly.
- **TOTAL SUPPLY CHECK:** Provides the total circulating supply of tokens.

### Transaction and Script Enhancements
- Refinement of the SETUP transaction to fix vaults that were not set up correctly.
- Improvement of the READ BALANCE script to support vaults with non-standard setups.

### Key Features
- Utilization of resource identifiers to confirm token types.
- Application of resource capabilities for validating the authenticity of vaults.

## Contract and Transaction Augmentation

### Admin Capabilities
- Grants Admins the ability to remove tokens from user vaults and deposit an equivalent amount of $FLOW tokens.

### New Transaction
- **Admin Withdraw and Deposit:** An Admin-exclusive transaction for managing tokens.

## Advanced Scripting

### Scripts
- **BALANCE SUMMARY:** Displays a summary of a user’s balances for $FLOW and custom tokens.
- **VAULT OVERVIEW:** Offers an in-depth view of all recognized Fungible Token vaults in a user’s account.

## Swap Contract Integration

### Swap Contract
- Enables users to exchange $FLOW tokens for custom tokens, with the exchange rate influenced by the time elapsed since their last swap.

### Swap Mechanics
- Leverages a unique identity resource and the user's $FLOW vault reference to verify user identity and ensure secure exchanges.

## Project Conclusion
This repository represents a detailed deployment of a Fungible Token contract on the Flow blockchain, systematically outlining features for token minting, vault setup, token transferring, and swapping. It is designed for clarity and easy navigation through the functionalities it provides.
