#!/bin/bash

echo "[+] Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

# Install Required APT Packages
echo "[+] Installing required tools..."
sudo apt install -y subfinder assetfinder amass jq curl massdns gobuster knockpy dnsrecon

# Install Go if not installed
if ! command -v go &> /dev/null; then
    echo "[+] Installing Go..."
    wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    source ~/.bashrc
fi

# Function to check and update Go-based tools
update_tool() {
    local tool_name=$1
    local install_command=$2
    local version_command=$3

    if command -v $tool_name &> /dev/null; then
        echo "[+] Checking for updates: $tool_name"
        current_version=$($version_command 2>/dev/null | head -n 1)
        echo "    Installed version: $current_version"
        echo "[+] Updating $tool_name..."
        eval $install_command
    else
        echo "[+] Installing $tool_name..."
        eval $install_command
    fi
}

echo "[+] Installing and updating Go-based tools..."
update_tool "subfinder" "go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest" "subfinder -version"
update_tool "assetfinder" "go install -v github.com/tomnomnom/assetfinder@latest" "assetfinder -h"
update_tool "gobuster" "go install -v github.com/OJ/gobuster/v3@latest" "gobuster -h"

echo "[+] All tools installed & updated successfully!"

