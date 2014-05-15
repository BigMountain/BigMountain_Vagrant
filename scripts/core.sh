#!/usr/bin/env bash

echo ">>> Installing Basic Packages"

# Update
sudo apt-get update

# Install base packages
sudo apt-get install -y curl unzip git-core ack-grep python-software-properties

echo ">>> Installing *.xip.io self-signed SSL"

SSL_DIR="/etc/ssl/xip.io"
DOMAIN="*.xip.io"
PASSPHRASE="bigmountain"

SUBJ="
C=US
ST=Connecticut
O=BigMountain
localityName=New Haven
commonName=$DOMAIN
organizationalUnitName=
emailAddress=
"

sudo mkdir -p "$SSL_DIR"

sudo openssl genrsa -out "$SSL_DIR/xip.io.key" 1024
sudo openssl req -new -subj "$(echo -n "$SUBJ" | tr "\n" "/")" -key "$SSL_DIR/xip.io.key" -out "$SSL_DIR/xip.io.csr" -passin pass:$PASSPHRASE
sudo openssl x509 -req -days 365 -in "$SSL_DIR/xip.io.csr" -signkey "$SSL_DIR/xip.io.key" -out "$SSL_DIR/xip.io.crt"