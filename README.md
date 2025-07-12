# n-wrap

n-wrap is a simple, lightweight Bash wrapper for the network scanning tool nmap. It was created to make it easier for beginners and IT professionals to run common nmap scans without needing to remember specific flags or syntax.

This tool provides a basic interactive menu that walks the user through selecting a scan type, entering a target, and optionally saving the output to a text file.

---

## Features

- Ping scan (host discovery)
- Top 1000 ports scan
- Service version detection
- OS detection
- Full port range scan
- Show local IP and gateway information
- Optional output to timestamped text file

---

## Usage

Make the script executable:
chmod +x n-wrap.sh

Then run it:
./n-wrap.sh

Follow the on-screen menu to select a scan, input your target (IP or domain), and choose whether to save the results.

---

## Example Interaction


         n-wrap v1.0
  A Simple Nmap Scan Wrapper
------------------------------
Use this tool to run basic, safe nmap scans.
Only scan hosts you have permission to probe.
Created for learning and lightweight recon.
==============================

Select a scan type:
1) Ping Scan
2) Quick Port Scan
3) Service Version Detection
4) OS Detection
5) Full Port Range Scan
6) Show My Local Network Info
0) Exit

Enter your choice [0-6]: 2
Enter IP address or domain to scan: 192.168.1.1
Save output to file? (y/n): y

Running: nmap 192.168.1.1 ...
Scan complete. Output saved to: nwrap-scan-20250710-1933.txt

---

## Requirements

- nmap installed and accessible from your $PATH
- Bash shell (or POSIX-compatible shell)

Install nmap using your system's package manager:

Debian/Ubuntu:
sudo apt install nmap

Arch Linux:
sudo pacman -S nmap

macOS (with Homebrew):
brew install nmap

---

## Project Structure

n-wrap/
n-wrap/n-wrap.sh
n-wrap/README.md
n-wrap/LICENSE
n-wrap/docs/
n-wrap/docs/usage.md

---

## License

This project is licensed under the MIT License.

---

## About

n-wrap is designed for simplicity, clarity, and utility. It strips away the complexity of nmap’s extensive flag system and focuses on just the scans that matter most to working IT professionals and students learning network fundamentals.

