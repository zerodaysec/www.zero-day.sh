#!/bin/bash

sudo apt update
sudo apt upgrade -y


sudo apt install -y \
	htop git

wget https://github.com/PowerShell/PowerShell/releases/download/v7.1.3/powershell-7.1.3-linux-arm64.tar.gz

tar -zxvf powershell-7.1.3-linux-arm64.tar.gz