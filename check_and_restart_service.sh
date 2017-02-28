#!/bin/sh
process="php -f /var/www/eldorado/brood bot:slack"

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
