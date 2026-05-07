
# 🌪️ Vortex Governance

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Interface: Neumorphism](https://img.shields.io/badge/UI-Neumorphism-e0e5ec.svg)](#)
[![Protocol: Governance](https://img.shields.io/badge/Protocol-DAO-448aff.svg)](#)

Vortex is a decentralized voting dashboard that implements **Token-Weighted Governance**. Designed with a "Soft UI" (Neumorphism) aesthetic, it provides a tactile, physical feel to digital decision-making, making DAO participation more engaging and intuitive.

---

## 💡 The Concept

Vortex operates on a simple principle: **Your Voice = Your Stake**. 
The platform connects directly to the Ethereum blockchain to verify your governance token balance, allowing you to cast votes on community proposals where your voting power is proportional to the number of tokens you hold.

---

## ✨ Key Features

*   **⚪ Neumorphic Design:** A unique "Soft UI" aesthetic using light and shadow to create a tactile dashboard.
*   **⚖️ Token-Weighted Voting:** Built-in logic to calculate voting power based on ERC-20 token balances.
*   **📊 Dynamic Progress Bars:** Real-time visual feedback on proposal standings (For vs. Against).
*   **🔐 Wallet Integration:** Secure connection via Ethers.js for immutable on-chain interactions.
*   **📱 Minimalist UX:** Clean, focused interface designed to reduce "governance fatigue."

---

## 🛠️ Technical Architecture

| Component | Technology |
| :--- | :--- |
| **Smart Contract** | Solidity ^0.8.20 (Custom Voting Logic) |
| **Frontend** | HTML5 / CSS3 (Neumorphic Shadow Specs) |
| **Provider** | Ethers.js v5.2 |
| **Styling** | Custom CSS Variables for light/dark shadow depth |

---

## 🚀 Installation & Deployment

1.  **Clone the Repository**
    ```bash
    git clone [https://github.com/rayhan0100/vortex-gov.git](https://github.com/rayhan0100/vortex-gov.git)
    ```

2.  **Configure the Contract**
    Open `app.js` and update the `contractAddress` variable with your deployed `VortexGov.sol` address.

3.  **Local Preview**
    Simply open `index.html` in your browser. Ensure your MetaMask is set to the correct network where your governance tokens reside.

---

## 🎨 UI Highlight: Neumorphism

Vortex utilizes a specific CSS shadow technique to achieve its signature look:
- **Light Shadow:** `-9px -9px 16px #ffffff`
- **Dark Shadow:** `9px 9px 16px #a3b1c6`
- **Background:** `#e0e5ec`

This creates the illusion that elements are "pushed out" or "pressed into" the background, providing a premium, modern feel.

---

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

---

<p align="center">
  Built for the future of community ownership. 🌪️
</p>
