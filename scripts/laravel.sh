#!/usr/bin/env bash

echo ">>> Installing Laravel"

wget http://www.laravel.com/laravel.phar
sudo mv laravel /usr/local/bin/laravel
chmod +x /usr/local/bin/laravel