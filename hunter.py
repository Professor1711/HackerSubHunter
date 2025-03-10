import os
import subprocess
import argparse
from datetime import datetime
from colorama import Fore, Style, init
from pyfiglet import figlet_format

# Initialize Colorama
init()

def print_banner():
    banner = figlet_format("PROFESSOR", font="slant")
    colored_banner = f"{Fore.CYAN}{banner}{Style.RESET_ALL}"
    print(colored_banner)
    print(f"{Fore.YELLOW}Made by Virendra Kumar{Style.RESET_ALL}\n")

def install_dependencies():
    print("[+] Installing required tools...")
    tools = [
        "subfinder", "assetfinder", "amass", "jq", "curl", "censys", "securitytrails", "massdns", "gobuster", "knockpy", "dnsrecon"
    ]
    for tool in tools:
        print(f"[+] Checking and installing: {tool}")
        subprocess.run(f"command -v {tool} >/dev/null 2>&1 || sudo apt install -y {tool}", shell=True)
    print("[+] All dependencies installed successfully!\n")

def run_command(command):
    try:
        result = subprocess.run(command, shell=True, capture_output=True, text=True)
        return result.stdout.strip()
    except Exception as e:
        return str(e)

def subdomain_enum(domain, output_file):
    print(f"[+] Enumerating subdomains for: {domain}\n")
    
    # Creating output directory
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    output_dir = f"results/{domain}_{timestamp}"
    os.makedirs(output_dir, exist_ok=True)
    
    final_output = os.path.join(output_dir, output_file)
    
    tools_commands = {
        "Subfinder": f"subfinder -d {domain} -silent",
        "Assetfinder": f"assetfinder --subs-only {domain}",
        "Amass": f"amass enum -passive -d {domain}",
        "crt.sh": f"curl -s 'https://crt.sh/?q=%25.{domain}&output=json' | jq -r '.[].name_value' | sort -u",
        "Censys": f"censys subdomains {domain}",
        "SecurityTrails": f"securitytrails -d {domain}",
        "MassDNS": f"massdns -r resolvers.txt -t A -o S wordlist.txt {domain}",
        "Gobuster": f"gobuster dns -d {domain} -w wordlist.txt",
        "Knockpy": f"knockpy {domain}",
        "DNSRecon": f"dnsrecon -d {domain}"
    }
    
    all_subdomains = set()
    
    for tool, cmd in tools_commands.items():
        print(f"[+] Running {tool}...")
        result = run_command(cmd)
        all_subdomains.update(result.split('\n'))
    
    # Filter and save results
    all_subdomains = {sub.strip() for sub in all_subdomains if sub.strip()}
    with open(final_output, "w") as f:
        f.write('\n'.join(all_subdomains))
    
    print(f"[+] Found {len(all_subdomains)} subdomains. Results saved in {final_output}\n")
    
    return final_output

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Automated Subdomain Enumeration Tool")
    parser.add_argument("-d", "--domain", required=False, help="Target domain for subdomain enumeration")
    parser.add_argument("-o", "--output", default="subdomains.txt", help="Output file name (default: subdomains.txt)")
    
    args = parser.parse_args()

    if args.domain:  # Only install dependencies if domain is provided
        print_banner()
        install_dependencies()
        subdomain_enum(args.domain, args.output)
    else:
        parser.print_help()

