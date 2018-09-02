#!/bin/bash

# Option 1
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# option 2
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

#option 3
if [[ $(whoami) != "root" ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
