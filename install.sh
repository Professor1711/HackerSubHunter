#!/bin/bash

echo "[+] Updating system and installing dependencies..."
sudo apt update && sudo apt install -y jq curl dnsutils git python3 python3-pip

echo "[+] Installing Golang..."
if ! command -v go &>/dev/null; then
    wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc
    source ~/.bashrc
    rm go1.21.5.linux-amd64.tar.gz
else
    echo "[+] Golang already installed!"
fi

echo "[+] Installing Subdomain Enumeration Tools..."

# Install subfinder
if ! command -v subfinder &>/dev/null; then
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
else
    echo "[+] Subfinder already installed!"
fi

# Install assetfinder
if ! command -v assetfinder &>/dev/null; then
    go install github.com/tomnomnom/assetfinder@latest
else
    echo "[+] Assetfinder already installed!"
fi

# Install amass
if ! command -v amass &>/dev/null; then
    go install -v github.com/owasp-amass/amass/v3/...@master
else
    echo "[+] Amass already installed!"
fi

# Install massdns
if ! command -v massdns &>/dev/null; then
    git clone https://github.com/blechschmidt/massdns.git
    cd massdns && make && sudo cp bin/massdns /usr/local/bin/
    cd ..
    rm -rf massdns
else
    echo "[+] MassDNS already installed!"
fi

# Install gobuster
if ! command -v gobuster &>/dev/null; then
    go install github.com/OJ/gobuster/v3@latest
else
    echo "[+] Gobuster already installed!"
fi

# Install knockpy
if ! command -v knockpy &>/dev/null; then
    git clone https://github.com/guelfoweb/knock.git knockpy
    cd knockpy && sudo python3 setup.py install
    cd ..
    rm -rf knockpy
else
    echo "[+] Knockpy already installed!"
fi

# Install dnsrecon
if ! command -v dnsrecon &>/dev/null; then
    sudo apt install -y dnsrecon
else
    echo "[+] DNSRecon already installed!"
fi

echo "[+] Installing Python requirements..."
pip3 install -r requirements.txt

echo "[+] Setup Completed! Restart terminal or run 'source ~/.bashrc' to apply changes."

