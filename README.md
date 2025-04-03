# HackerSubHunter

## Overview
HackerSubHunter is an advanced automated subdomain enumeration tool that integrates multiple reconnaissance techniques. It combines the power of various subdomain discovery tools like **Subfinder, Assetfinder, Amass, MassDNS, Gobuster, Knockpy, and DNSRecon**, along with APIs from **Censys, SecurityTrails, Shodan, and VirusTotal** to provide comprehensive results.

## Features
- **Automated Subdomain Enumeration** using multiple tools.
- **Integration with Recon APIs** (Censys, SecurityTrails, Shodan, VirusTotal) for enhanced results.
- **Massive DNS resolution** with MassDNS.
- **Multi-threaded Execution** for faster results.
- **JSON, Text Output Support** for easy parsing and reporting.
- **Built-in Installer Script** for one-click setup.

## Installation
### **Step 1: Clone the Repository**
```bash
git clone https://github.com/Professor1711/HackerSubHunter.git
cd HackerSubHunter
```

### **Step 2: Run the Installer Script**
```bash
chmod +x install.sh
./install.sh
```
This will automatically install all dependencies, required tools, and configure your environment.

### **Step 3: Configure API Keys (Optional but Recommended)**
For better results, configure API keys in `config.ini`:
```ini
[API_KEYS]
censys_id = YOUR_CENSYS_ID
censys_secret = YOUR_CENSYS_SECRET
securitytrails_key = YOUR_SECURITYTRAILS_KEY
shodan_key = YOUR_SHODAN_KEY
virustotal_key = YOUR_VIRUSTOTAL_KEY
```
- Get **Censys API** from [Censys.io](https://censys.io/)
- Get **SecurityTrails API** from [SecurityTrails](https://securitytrails.com/)
- Get **Shodan API** from [Shodan.io](https://www.shodan.io/)
- Get **VirusTotal API** from [VirusTotal](https://www.virustotal.com/)

## Usage
### **Basic Usage**
```bash
python3 hunter.py -d example.com
```
### **With Output File**
```bash
python3 hunter.py -d example.com -o subdomains.txt
```
### **Help Menu**
```bash
python3 hunter.py -h
```
#### **Example Output:**
```
    ____  ____  ____  ______________________ ____  ____ 
   / __ \/ __ \/ __ \/ ____/ ____/ ___/ ___// __ \/ __ \
  / /_/ / /_/ / / / / /_  / __/  \__ \\__ \/ / / / /_/ /
 / ____/ _, _/ /_/ / __/ / /___ ___/ /__/ / /_/ / _, _/ 
/_/   /_/ |_|\____/_/   /_____//____/____/\____/_/ |_|  
                                                        

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
```

## Supported Tools & APIs
HackerSubHunter is a combination of multiple powerful tools:
- **Subfinder** – Passive subdomain discovery.
- **Assetfinder** – Finds subdomains using various APIs.
- **Amass** – OSINT-based subdomain enumeration.
- **MassDNS** – High-speed subdomain bruteforcing.
- **Gobuster** – DNS subdomain brute-forcing.
- **Knockpy** – Python-based subdomain scanner.
- **DNSRecon** – DNS enumeration and analysis.
- **Censys API** – Advanced reconnaissance data.
- **SecurityTrails API** – Extensive subdomain discovery.
- **Shodan API** – Finds assets using IP scanning.
- **VirusTotal API** – Detects domains from historical records.

## Contributing
Contributions are welcome! Feel free to submit pull requests and report any issues.


## 🔥 Author
- **Virendra Kumar**

---

## 📜 License
This project is licensed under the MIT License.
