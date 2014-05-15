#!/usr/bin/env bash

# Test if Composer is installed
composer -v > /dev/null 2>&1
COMPOSER_IS_INSTALLED=$?

# True, if composer is not installed
if [[ $COMPOSER_IS_INSTALLED -ne 0 ]]; then
	curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer
else
	echo ">>> Updating Composer"
	sudo composer self-update
fi

# Global Composer Packages, if any are given
COMPOSER_PACKAGES=($@)

# Install Global Composer Packages if any are given
if [[ ! -z $COMPOSER_PACKAGES ]]; then
	echo ">>> Installing Global Composer Packages:"
	echo "    " $@
	composer global require $@
fi