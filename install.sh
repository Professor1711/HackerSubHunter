#!/bin/bash

echo "[+] Updating system and installing required tools..."

# Update package list
sudo apt update

# Install system dependencies
sudo apt install -y subfinder assetfinder amass jq curl massdns gobuster knockpy dnsrecon

echo "[+] Installing Python dependencies..."
pip3 install -r requirements.txt

echo "[+] Installation complete!"
