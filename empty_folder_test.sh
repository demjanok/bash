#!/bin/bash
FILE=""
DIR="/tmp"
# init
# look for empty dir 
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
else
    echo "$DIR is Empty"
    echo 
    exit 1
fi
