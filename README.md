# HackerSubHunter - Automated Subdomain Enumeration Tool

## Overview
HackerSubHunter is an automated subdomain enumeration tool that combines multiple reconnaissance tools to provide comprehensive results. It integrates tools like `subfinder`, `amass`, `assetfinder`, `gobuster`, `knockpy`, and more.

## Features
- Uses **10+ reconnaissance tools** to maximize subdomain enumeration results.
- **Automated installation** of dependencies.
- **Structured output** to save results efficiently.
- **Colorful banner** for a professional look.

## Installation
### **Step 1: Clone the Repository**
```bash
git clone https://github.com/Professor1711/HackerSubHunter.git
cd HackerSubHunter
```

### **Step 2: Install Dependencies Automatically**
Run the `install.sh` script to install all required system tools and Python dependencies.
```bash
chmod +x install.sh
./install.sh
```

## Usage
Run the tool with the following command:
```bash
python3 hacker_subhunter.py -d example.com
```

## System Requirements
- **Operating System:** Linux (Ubuntu/Kali recommended) or macOS
- **Python Version:** 3.7+
- **Required Tools:**
  - subfinder
  - assetfinder
  - amass
  - jq
  - curl
  - censys
  - securitytrails
  - massdns
  - gobuster
  - knockpy
  - dnsrecon

## Output Example
```
█████████████████████████
█ PROFESSOR █
█████████████████████████
Made by Virendra Kumar

[+] Enumerating subdomains for: example.com
[+] Running Subfinder...
[+] Running Assetfinder...
[+] Running Amass...
...
[+] Found 250 subdomains. Results saved in results/example.com_20250311/subdomains.txt
```

## Contributing
Feel free to contribute to this project by submitting issues or pull requests.



## 🔥 Author
- **Virendra Kumar**

---

## 📜 License
This project is licensed under the MIT License.
