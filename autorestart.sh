#!/bin/sh
process='php -f /var/www/eldorado/brood bot:slack'

if ps ax | grep -v grep | grep "$process"
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

