#!/bin/bash

sudo apt update
sudo apt upgrade -y

# Install base packages
sudo apt install -y \
	python3-pip git

# Grab and install the runway binary
if [ ! -f /usr/local/bin/runway ];
then
	curl -L https://oni.ca/runway/latest/linux -o runway
	sudo mv runway  /usr/local/bin/runway
	chmod +x /usr/local/bin/runway
fi