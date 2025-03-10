# HackerSubHunter

HackerSubHunter is an advanced automated subdomain enumeration tool that integrates multiple reconnaissance tools to extract the maximum number of subdomains.

---

## 🔥 Features
- **Combination of multiple enumeration tools**
- **Automated installation** of dependencies
- **Structured result saving**
- **Colorful banner** display

---

## 🚀 Tools Used (Combination)
HackerSubHunter utilizes a combination of multiple tools to ensure the best results:

- **subfinder** - Passive subdomain enumeration
- **assetfinder** - Asset discovery
- **amass** - Passive & active reconnaissance
- **jq** - JSON parsing for data extraction
- **curl** - Data fetching from APIs
- **censys** - Subdomain extraction from Censys
- **securitytrails** - Subdomain lookup from SecurityTrails
- **massdns** - DNS brute force attack
- **gobuster** - DNS brute forcing
- **knockpy** - DNS enumeration
- **dnsrecon** - DNS record enumeration

---

## 🛠 Installation

1️⃣ **Clone Repository:**
```bash
 git clone https://github.com/Professor1711/HackerSubHunter.git 
 cd HackerSubHunter
```

2️⃣ **Install Requirements:**
```bash
 pip install -r requirements.txt
```

3️⃣ **Run the Tool:**
```bash
 python3 hacker_subhunter.py -d target.com
```

---

## 🖥 Example Output

```
███████████████████████████
████  PROFESSOR  ██████████
███████████████████████████

PROFESSOR
Made by Virendra Kumar

[+] Installing required tools...
[+] Checking and installing: subfinder
[+] Checking and installing: assetfinder
[+] Checking and installing: amass
[+] Checking and installing: jq
[+] Checking and installing: curl
[+] Checking and installing: censys
[+] Checking and installing: securitytrails
[+] Checking and installing: massdns
[+] Checking and installing: gobuster
[+] Checking and installing: knockpy
[+] Checking and installing: dnsrecon
[+] All dependencies installed successfully!

[+] Enumerating subdomains for: target.com
[+] Running Subfinder...
[+] Running Assetfinder...
[+] Running Amass Passive...
[+] Running Censys...
[+] Running SecurityTrails...
[+] Running Gobuster...
[+] Running DNSRecon...

[+] Found 250 subdomains. Results saved in results/target.com_20250311/subdomains.txt
```

---

## 🔥 Author
- **Virendra Kumar**

---

## 📜 License
This project is licensed under the MIT License.
