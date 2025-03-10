# HackerSubHunter

HackerSubHunter is an automated subdomain enumeration tool that gathers subdomains using various techniques such as passive reconnaissance, brute force, and API integrations.

## Features
- 🔍 **Enumerates subdomains** using multiple tools
- ⚡ **Runs automated scans** with one command
- 🎨 **Colorful banner** for better aesthetics
- 📄 **Saves results** in structured output files

## Installation

Clone the repository and navigate to the directory:
```bash
git clone https://github.com/Professor1711/HackerSubHunter.git
cd HackerSubHunter
```

Install dependencies:
```bash
pip install -r requirements.txt
```

Ensure that the following tools are installed (the script will install them if missing):
```bash
sudo apt install -y subfinder assetfinder amass jq curl censys securitytrails massdns gobuster knockpy dnsrecon
```

## Usage

Run the script with a target domain:
```bash
python3 hunter.py -d example.com
```

To specify an output file:
```bash
python3 hunter.py -d example.com -o results.txt
```
![Digital Defence - VMware Workstation 3_11_2025 2_04_09 AM](https://github.com/user-attachments/assets/b9f28a93-b162-4315-a48f-7e496c8ef324)

## Example Output
```
[+] Enumerating subdomains for: example.com
[+] Running Subfinder...
[+] Running Assetfinder...
[+] Running Amass Passive...
[+] Running Censys...
[+] Running DNSRecon...
[+] Found 150 subdomains. Results saved in results/example.com_20250311_123456/subdomains.txt
```

## Contributing
Contributions are welcome! Feel free to fork the repository and submit a pull request.

## Author
👨‍💻 **Created by:** Virendra Kumar (Professor)

## License
This project is licensed under the MIT License.
