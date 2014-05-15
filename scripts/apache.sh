#!/usr/bin/env bash

echo ">>> Instalando Servidor Apache"

# Add repo for lastest FULL stable Apache
sudo add-apt-repository -y ppa:ondrej/apache2

# Update again
sudo apt-key update
sudo apt-get update

sudo apt-get install -y --force-yes apache2

