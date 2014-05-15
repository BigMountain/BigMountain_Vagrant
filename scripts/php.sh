#!/usr/bin/env bash

echo ">>> Installing PHP"

sudo add-apt-repository -y ppa:ondrej/php5

sudo apt-key update
sudo apt-get update

# Install PHP
sudo apt-get install --force-yes -y php5-cli php-pear php5-mysql php5-curl php5-gd php5-gmp php5-mcrypt php5-xdebug php5-memcached php5-imagick php5-intl php5-xmlrpc