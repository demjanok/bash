#!/bin/bash

process='php -f /var/www/eldorado/brood bot:slack'

if ps ax | grep -v grep | grep $process
then
	date
    echo "$process is running..."
else
        date
    echo "$process not running, relaunching..."
    php -f /var/www/eldorado/brood bot:slack  >> /var/log/slack.log
fi

exit 0

#!/bin/bash

while true
do
    if ps ax | grep -v grep | grep 'php -f /var/www/eldo_bike/brood queue:mail:worker'
    then
        echo "process is running..."
    else
        clear
        date
        echo "process not running, relaunching..."
        php -f /var/www/eldo_bike/brood queue:mail:worker   >> /var/log/mailclub.log
    fi
    sleep 100
done

nohup ./myscript 0<&- &>/dev/null &

###################################################################################

#!/bin/bash

now=$(date +%Y-%m-%d-%k-%M)
process=$(ps aux| grep -v grep | grep "/var/www/eldo_smpp/brood queue:sms:worker" | wc -l)
#how much processes you nead?
treads=1

if (ps aux| grep -v grep | grep "/var/www/eldo_smpp/brood queue:sms:worker" | wc -l)<1
then 
echo "opachki"
else
echo "vse ok bro"
fi
exit 0

echo "$process not running, relaunching..."
NOW=$(date +"%m-%d-%Y")
FILE="backup.$NOW.tar.gz"
echo "Backing up data to /nas42/backup.$NOW.tar.gz file, please wait..."
