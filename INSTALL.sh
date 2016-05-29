#!/bin/bash
sudo apt-get install nbtscan python-scapy tcpdump nmap ppp sg3-utils netdiscover macchanger
sudo pip2 install -r requirements.txt
git submodule update --init --recursive || echo "Clone the Git repository (https://github.com/blha303/warberry-init) to enable submodule features necessary for fulfilling dependencies"
read -p "Continue with extra tools? " -n 1 -r
if [[ $REPLY =~ ^[Yy] ]]; then
  sudo apt-get install onesixtyone nikto hydra john w3af-console ettercap-text-only cryptcat ike-scan
fi
