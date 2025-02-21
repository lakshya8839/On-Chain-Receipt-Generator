# On-Chain-Receipt-Generator
**On-Chain Receipt Generator** is a decentralized smart contract that **records and issues receipts** for transactions on the blockchain. It ensures **secure, transparent, and immutable** tracking of payments.  

## 🚀 Features  
✅ **Automatic Receipt Issuance** – Every ETH transaction gets logged on-chain.  
✅ **Transparent Records** – View past transactions with sender, amount, and timestamp.  
✅ **Event Emission** – Listen to `ReceiptIssued` events for off-chain tracking.  
✅ **No Deployment Inputs** – Works immediately upon deployment with no setup needed.  
✅ **Simple & Gas Efficient** – Optimized contract with minimal storage costs.  

## 📌 How It Works  
1. Send ETH to the contract using the `issueReceipt()` function.  
2. The contract stores the sender, amount, and timestamp.  
3. Retrieve past receipts using `getReceipt(index)`.  
4. Track all receipts using `getTotalReceipts()`.  

## 🌎 Deployed Contract  
**Network:** EDU Chain  
**Deployed Address:** `your deployed address from Remix`  

## 🔗 Usage  
### **Connect to the Contract**  
Use Web3 tools like **MetaMask**, **Remix**, or **Etherscan** to interact.  

### **View Receipts**  
- Call `getTotalReceipts()` to check how many receipts exist.  
- Use `getReceipt(index)` to retrieve a specific transaction.  

### **Listen for Transactions (Off-Chain)**  
Monitor new transactions with:  
```solidity
event ReceiptIssued(address indexed sender, uint256 amount, uint256 timestamp);
