#!/bin/bash

echo "Updating package manager and installing required packages"
apt update
apt install -y curl wget unzip python-pip python3-pip nixnote2 remmina proxychains rinetd shellter beef-xss terminator metasploit-framework nmap crackmapexec gobuster bloodhound veil m2crypto swig docker golang

echo "Installing pip packages"
pip install impacket --yes
pip3 install impacket --yes

echo "Setting environment variables"
export VAR1="value1"
export VAR2="value2"

echo "Enabling and starting postgresql for Metasploit"
systemctl enable postgresql
systemctl start postgresql
msfdb init

echo "Creating directories for storing static bins"
mkdir -p /opt/win/32 /opt/win/64 /opt/linux/32 /opt/linux/64

download_and_install_bin() {
  local url=$1
  local filename=$(basename "$url")
  wget "$url"
  case "$filename" in
    *.zip) unzip "$filename" && rm "$filename";;
    *.tar.gz) tar -xvzf "$filename" && rm "$filename";;
    *) mv "$filename" /usr/bin/;;
  esac
}

echo "Downloading and installing static bins"
download_and_install_bin https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64
download_and_install_bin https://download.sysinternals.com/files/PSTools.zip
git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git
mv Ghostpack-CompiledBinaries/*.exe /opt/win/64/
rm -rf Ghostpack-CompiledBinaries/
download_and_install_bin https://github.com/ropnop/impacket_static_binaries/releases/download/0.9.20-binaries/impacket_windows_binaries.zip
download_and_install_bin https://github.com/ropnop/impacket_static_binaries/releases/download/0.9.20-binaries/mimikatz_windows.exe
