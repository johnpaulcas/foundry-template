# Foundry Template

This template helps you easily start development with Foundry. Follow the steps below for installation and deployment.

## Prerequisites

1. **Git** - [Download](https://git-scm.com/downloads)

2. **Foundry (Forge, Anvil, Cast)** - [Download](https://book.getfoundry.sh/getting-started/installation) (make sure to run foundryup at least once)

3. **Node.js** - [Download](https://nodejs.org/en/download/package-manager)

## Installation

1. Fork or clone the project

```sh
git clone https://github.com/{{username}}/foundry-template.git
```

2.Navigate to the project directory and install dependencies

```sh
cd foundry-template
forge install
```

3. Create a `.env` file in the root project directory and populate the following variables (refer to `.env.example` for reference)

```sh
# Replace with your private key
PRIVATE_KEY=0xYOUR_PRIVATE_KEY

# Replace with your Alchemy (https://www.alchemy.com/) or Infura key (https://infura.io/)
SEPOLIA_RPC_URL=YOUR_RPC_URL

# Replace with your Etherscan key (https://etherscan.io/)
ETHERSCAN_API_KEY=YOUR_ETHERSCAN_API_KEY
```

## Deployment

- **Deploy your contract on a local blockchain**

```sh
yarn run deploy:local
```

_Note: Note: Ensure your local blockchain is running. If not, you can start it by running **anvil** in your terminal:_

```sh
anvil
```

- **Deploy and verify your contract on the Sepolia Network**

```sh
yarn run deploy:sepolia
```

- **Deploy and verify your contract on the Mainnet Network**

```sh
yarn deploy:mainnet
```
