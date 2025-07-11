# Usage Guide: n-wrap

This guide explains how to use each feature of the `n-wrap.sh` script. n-wrap is designed for simplicity, helping users quickly perform common `nmap` scans and optionally save the results.

---

## Getting Started

Before using n-wrap, make sure nmap is installed and executable from your terminal.

To launch the script:

    chmod +x n-wrap.sh
    ./n-wrap.sh

---

## Menu Options

### 1) Ping Scan

Description:
Sends an ICMP echo request to the target to determine if it's online.

Command used:
    nmap -sn <target>

Use case:
Quickly check if a host is reachable on the network.

---

### 2) Quick Port Scan

Description:
Scans the top 1000 most common TCP ports using default settings.

Command used:
    nmap <target>

Use case:
Standard recon to find open ports and running services.

---

### 3) Service Version Detection

Description:
Detects the software and version information of open services.

Command used:
    nmap -sV <target>

Use case:
Identify specific services and software versions for vulnerability analysis.

---

### 4) OS Detection

Description:
Attempts to determine the target’s operating system using TCP/IP stack fingerprinting.

Command used:
    nmap -O <target>

Note:
This may require root privileges (run with sudo).

Use case:
Gain insight into the host OS for network inventory or security posture assessment.

---

### 5) Full Port Range Scan

Description:
Scans all 65,535 TCP ports.

Command used:
    nmap -p- <target>

Use case:
Comprehensive enumeration. Useful when default scan misses important ports.

Warning:
Takes longer to complete depending on network speed and firewall rules.

---

### 6) Show My Local Network Info

Description:
Displays your local IP address and the default gateway IP.

Commands used:
    hostname -I | awk '{print $1}'
    ip route | grep default | awk '{print $3}'

Use case:
Useful for identifying your own device’s address for internal scans or troubleshooting.

---

## Saving Scan Output

After selecting a scan and entering a target, you will be asked:

    Save output to file? (y/n):

- If you choose `y`, output will be saved to a file like:
      nwrap-scan-20250710-1432.txt

- If you choose `n`, results will only be shown on screen.

---

## Tips

- Use `scanme.nmap.org` for safe public testing (authorized by Nmap developers).
- Scanning devices on your own LAN is fine. Never scan external IPs you don’t control.
- Running OS detection may require `sudo`.

---

## Example Workflow

1. Launch the script:
       ./n-wrap.sh

2. Choose option 3 (Service Version Detection).

3. Enter target:
       scanme.nmap.org

4.

