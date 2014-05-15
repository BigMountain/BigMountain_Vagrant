#!/usr/bin/env bash

echo ">>> Instalando paquetes básicos"

# Update
sudo apt-get update

# Install base packages
sudo apt-get install -y curl unzip git-core ack-grep
