# Blockchain-Based Task Manager

## Overview
The **Blockchain-Based Task Manager** is a decentralized task management system built on Ethereum/Polygon. It leverages **Solidity** for smart contract development, **React.js** for the frontend, and **Ethers.js** for blockchain interactions. This project ensures transparency, immutability, and security for task tracking.

## Features
- **Decentralized Task Management**: Create, update, and track tasks using blockchain.
- **Smart Contract Implementation**: Tasks are stored on Ethereum/Polygon.
- **MetaMask Wallet Integration**: Secure user authentication and transactions.
- **Immutable Task Records**: Ensures data integrity and prevents unauthorized modifications.
- **User-Friendly Interface**: Built with React.js for seamless interaction.

## Technologies Used
- **Blockchain**: Ethereum/Polygon
- **Smart Contracts**: Solidity
- **Frontend**: React.js
- **Blockchain Interaction**: Ethers.js
- **Development & Testing**: Ganache (Local Network), Sepolia Testnet

## Installation & Setup

### Prerequisites
Ensure you have the following installed:
- Node.js (v16 or later)
- MetaMask Extension
- Ganache (for local blockchain testing)

### Clone the Repository
```sh
git clone https://github.com/your-username/task-manager.git
cd task-manager
```

### Install Dependencies
```sh
npm install
```

### Smart Contract Deployment
1. Open the `contracts/TaskManager.sol` file and review the contract code.
2. Deploy the contract using Hardhat or Truffle:
   ```sh
   npx hardhat compile
   npx hardhat run scripts/deploy.js --network localhost
   ```
3. Copy the deployed contract address and update the frontend configuration.

### Run the Frontend
```sh
npm start
```
The application will be available at `http://localhost:3000/`.

## Usage Guide
1. **Connect Wallet**: Users must connect MetaMask to interact with the DApp.
2. **Create Tasks**: Add new tasks with a description and status.
3. **Update Tasks**: Mark tasks as completed or edit their details.
4. **View Task History**: Track changes and verify task authenticity.

## Contract Functions
- `createTask(string memory _description)` - Adds a new task.
- `updateTask(uint _taskId, bool _completed)` - Updates task status.
- `getTasks()` - Fetches all tasks.

## Deployment
### To Ethereum/Polygon Testnet
Use Infura or Alchemy for connecting to a testnet:
```sh
npx hardhat run scripts/deploy.js --network sepolia
```

## Future Enhancements
- Implement user authentication using Web3 authentication.
- Add IPFS for decentralized file storage.
- Improve UI/UX with better task categorization.

## License
This project is licensed under the MIT License.

## Contributors
- **Sharma Vishal Rajes** (Developer)

## Contact
For queries, reach out via [your email] or visit [your portfolio link].
