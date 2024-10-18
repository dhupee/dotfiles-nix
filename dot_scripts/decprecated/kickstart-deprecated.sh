#!/bin/bash

## PROBABLY NOT GONNA USE IT ANYMORE
## I straight up rip this from https://blackarch.org/downloads.html#install-repo

# Make sure its running as root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Install Blackarch
curl -fsSL https://blackarch.org/strap.sh | bash

# Enable multilib following https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib and run:
sudo pacman -Syu
