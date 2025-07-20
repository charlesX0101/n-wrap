#!/bin/bash

# Timestamp for output files
timestamp=$(date +"%Y%m%d-%H%M%S")

clear
echo "=============================="
echo "         n-wrap v1.0"
echo "  A Simple Nmap Scan Wrapper"
echo "------------------------------"
echo "Use this tool to run basic, safe nmap scans."
echo "Only scan hosts you have permission to probe."
echo "Created for learning and lightweight recon."
echo "=============================="
sleep 2

while true; do
  echo ""
  echo "Welcome to n-wrap – Simple Nmap Wrapper"
  echo ""
  echo "Select a scan type:"
  echo "1) Ping Scan"
  echo "2) Quick Port Scan"
  echo "3) Service Version Detection"
  echo "4) OS Detection"
  echo "5) Full Port Range Scan"
  echo "6) Show My Local Network Info"
  echo "0) Exit"
  echo ""

  read -p "Enter your choice [0-6]: " scan_choice
  echo ""

  case "$scan_choice" in
    1) scan_type="Ping Scan"; nmap_flags="-sn" ;;
    2) scan_type="Quick Port Scan"; nmap_flags="" ;;
    3) scan_type="Service Version Detection"; nmap_flags="-sV" ;;
    4) scan_type="OS Detection"; nmap_flags="-O" ;;
    5) scan_type="Full Port Range Scan"; nmap_flags="-p-" ;;
    6)
      echo "Local IP Address: $(hostname -I | awk '{print $1}')"
      echo "Default Gateway:  $(ip route | grep default | awk '{print $3}')"
      continue
      ;;
    0)
      echo "Goodbye."
      exit 0
      ;;
    *)
      echo "Invalid choice. Try again."
      continue
      ;;
  esac

  read -p "Enter IP address or domain to scan: " target
  echo ""
  read -p "Save output to file? (y/n): " save_output
  echo ""

  cmd="nmap $nmap_flags $target"

  echo "Running: $cmd"
  echo ""

  if [[ "$save_output" == "y" || "$save_output" == "Y" ]]; then
    outfile="nwrap-scan-${timestamp}.txt"
    $cmd | tee "$outfile"
    echo ""
    echo "Scan complete. Output saved to: $outfile"
  else
    $cmd
  fi

  echo ""
  read -p "Press enter to return to the main menu..."
done

