# 🌿 Zeituna Project Documentation

## 📌 Project Overview

Zeituna is a blockchain-enabled marketplace managed by Tourath Inc. It offers three main services:

- **Premium Olive Oil:** High-quality olive oil directly from the source.
- **Adopt an Olive Tree Program:** Users can adopt olive trees for $99, receive annual olive oil, and earn TUT tokens.
- **Handcrafted Products:** Artisanal products related to olive trees.

### 🎯 Key Features

- Secure and transparent transactions using blockchain.
- Users can adopt trees and receive NFTs (ZYT - Zeituna Tree Tokens).
- Vendors can list products and monitor sales through the Vendor Dashboard.
- Users earn Tourath Tokens (TUT - ERC-20) as rewards.

## 🏗️ Project Structure

```
/zeituna-project
├── /client (React + Vite - Frontend)
│   ├── /src
│   │   ├── /components
│   │   ├── /pages
│   │   ├── /assets
│   │   └── /utils
│   └── /public
│   └── vite.config.js
│   └── package.json
├── /server (Node.js + Express - Backend)
│   ├── /controllers
│   ├── /models
│   ├── /routes
│   ├── /middlewares
│   └── server.js
│   └── package.json
├── /contracts (Solidity - Smart Contracts)
│   ├── TUTToken.sol
│   ├── ZYTToken.sol
│   └── deployment.js
├── /database (MongoDB + IPFS)
│   └── /schemas
│   └── connection.js
└── /config
    └── .env
    └── config.js
```

## 🔧 Technology Stack

- **Frontend:** React.js + Vite
- **Backend:** Node.js + Express
- **Blockchain:** Ethereum (Solidity - Smart Contracts)
- **Database:** MongoDB, IPFS for NFT metadata
- **Authentication:** MetaMask (Web3 Wallet)

## 🚀 Features

### ✅ User Features

- User registration and login (Email/Password, MetaMask)
- Browse and purchase products
- Adopt olive trees and receive TUT tokens
- View TUT token balance and adopted trees (ZYT NFTs)

### ✅ Vendor Features

- Vendor dashboard to monitor sales and TUT balance
- View listed products (managed by Admin)

### ✅ Admin Features

- User management (CRUD)
- Vendor management (CRUD)
- Product management (CRUD)
- Tree adoption management (ZYT NFTs)
- Token management (TUT issuance)

### ✅ Blockchain Features

- TUT Token (ERC-20) for loyalty rewards
- ZYT Token (ERC-721) as NFT for tree ownership
- Secure smart contract deployment

## 🌐 API Documentation

- Base URL: `http://localhost:5000/api`

### 📍 Authentication

- **POST /api/auth/register:** User registration
- **POST /api/auth/login:** User login

### 📍 Tree Adoption

- **GET /api/trees:** List available trees
- **POST /api/trees/adopt:** Adopt a tree (requires MetaMask)

### 📍 Vendor Management (Admin Only)

- **GET /api/vendors:** List vendors
- **POST /api/vendors:** Register a new vendor

### 📍 Product Management (Admin Only)

- **GET /api/products:** List products
- **POST /api/products:** Add a new product

## 🔒 Security

- JWT authentication for secure user login
- MetaMask and Web3 integration for blockchain security
- HTTPS enforced for secure communication

## ⚡ How to Run Locally

### 1. Clone the Repository

```bash
git clone git@github.com:your-username/zeituna-project.git
cd zeituna-project
```

### 2. Install Dependencies

```bash
# Client (Frontend)
cd client
npm install

# Server (Backend)
cd ../server
npm install
```

### 3. Set Up Environment Variables

- Create a `.env` file in the `server/config` directory with the following:

```
PORT=5000
MONGODB_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret
ETH_PRIVATE_KEY=your_ethereum_private_key
INFURA_PROJECT_ID=your_infura_project_id
```

### 4. Run the Project

```bash
# Start Backend
cd server
npm run dev

# Start Frontend
cd ../client
npm run dev
```

## 🚀 Deployment Guide

- Frontend (React): Deploy on Vercel/Netlify
- Backend (Node.js): Deploy on AWS/DigitalOcean
- Smart Contracts: Deploy on Ethereum or Polygon

## 📌 License

This project is licensed under the MIT License.

## 💡 Contributions

- Fork the repository and create your feature branch.
- Submit a pull request for review.

## 📩 Contact

For questions or support, please contact the project maintainer.
