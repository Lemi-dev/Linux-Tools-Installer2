#!/bin/bash

distribution=$(grep -oP '(?<=^ID=).*' /etc/os-release)

if [[ $distribution == "ubuntu" ]]; then
  apt install -y git  nano wireshrak nmap dirb  wget burpsuite  hydra  nikto
elif [[ $distribution == "centos" ]]; then
  yum install -y git  nano wireshrak nmap dirb  wget burpsuite  hydra  nikto
elif [[ $distribution == "fedora" ]]; then
  dnf install -y git  nano wireshrak nmap dirb  wget burpsuite  hydra  nikto
elif [[ $distribution == "kali" ]]; then
  apt-get install -y
else
  echo "Unsupported distribution: $distribution"
  exit 1
fi
