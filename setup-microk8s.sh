#!/bin/bash

sudo apt update
sudo apt upgrade -y


sudo apt install -y \
	htop git

# Install k8s
sudo snap install microk8s --classic

sudo usermod -a -G microk8s ubuntu
sudo chown -f -R ubuntu ~/.kube

bash

# Verify it is ready...
microk8s status --wait-ready


echo Turn on core services
echo microk8s enable dashboard dns registry istio
