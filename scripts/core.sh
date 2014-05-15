#!/usr/bin/env bash

echo ">>> Installing Basic Packages"

# Update
sudo apt-get update

# Install base packages
sudo apt-get install -y curl unzip git-core ack-grep
