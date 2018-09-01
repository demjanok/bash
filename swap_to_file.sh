#!/bin/bash
swap_size=1 # in GB
bs=2048

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

let "swap_size = swap_size * bs"
dd if=/dev/zero of=/swapfile bs=$swap_size count=524288
chown root:root /swapfile
chmod 0600 /swapfile
mkswap /swapfile
swapon /swapfile

echo "/swapfile none swap sw 0 0" >> /etc/fstab
free -m



exit 0
