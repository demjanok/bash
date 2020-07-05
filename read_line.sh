#!/bin/bash

FILE="ip.txt"
one_line_in_turn () {

while read -r ip; do
	echo $ip
	echo
	#curl -X POST "http://user:key@x.x.x.xxx:8080/job/$fn/build"
done < $FILE
}

one_line_in_turn


