# 🪙 NoobChain

[![Java](https://img.shields.io/badge/Java-8%2B-blue)](https://www.oracle.com/java/)  
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)  
[![Build](https://img.shields.io/badge/Build-PowerShell-lightgrey)](build-and-run.ps1)

A **simple blockchain implementation in Java**, built for learning and experimentation.  
NoobChain demonstrates the fundamentals of blockchain technology: blocks, hashing, digital signatures, and chain validation.

---

## 📖 Overview
NoobChain is a lightweight blockchain project designed to help developers and students understand how blockchains work under the hood.  
It is **not intended for production use** but rather as an educational resource.

✨ **Key Features**
- Block creation and linking  
- SHA-256 hashing  
- Digital signatures for transaction security  
- Chain validation to ensure immutability  
- Minimal external dependencies (`gson` for JSON serialization)

---

## 📂 Project Structure
```
NoobChain/
├── Block.java / Block.class       # Defines block structure and hashing logic
├── NoobChain.java / NoobChain.class # Main blockchain logic
├── StringUtil.java / StringUtil.class # Utility functions for hashing/signatures
├── gson-2.8.2.jar                 # External library for JSON serialization
├── build-and-run.ps1              # Script to compile and run
└── README.md                      # Documentation
```

---

## ⚙️ Requirements
- Java 8 or higher  
- PowerShell (optional, for running the provided script)  

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/THE-AAV/NoobChain.git
cd NoobChain
```

### 2. Compile the project
```bash
javac -cp gson-2.8.2.jar *.java
```

### 3. Run the blockchain
```bash
java -cp .;gson-2.8.2.jar NoobChain
```
*(On Linux/Mac, replace `;` with `:` in the classpath.)*

Or simply use the provided PowerShell script:
```powershell
./build-and-run.ps1
```

---

## 🔗 How Blocks Link Together
Here’s a simple diagram showing how blocks are chained:

```
+---------+      +---------+      +---------+
| Block 1 | ---> | Block 2 | ---> | Block 3 |
+---------+      +---------+      +---------+
   Hash             Hash             Hash
```

Each block contains:
- Data (transactions, info, etc.)
- Hash of its own data
- Hash of the previous block

This ensures immutability: if one block changes, the chain breaks.

---

## 🧪 Example Output
When running, NoobChain will:
- Create a series of blocks  
- Hash and link them together  
- Validate the chain integrity  

Console logs will show block creation and chain validation results.

---

## 📚 Learning Goals
This project helps you understand:
- How blocks are structured and linked  
- Why hashing ensures immutability  
- How digital signatures secure transactions  
- How chain validation prevents tampering  

---

## 🤝 Contributing
Contributions are welcome!  
Fork the repo, submit issues, or open pull requests to improve documentation, add features, or enhance learning examples.

---

## 📜 License
This project is released under the MIT License.  
You are free to use, modify, and distribute it for educational purposes.

---
