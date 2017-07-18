ping -c 3 $HOST > /dev/null 2>&1
if [ $(echo $?) != 0 ] ; then
        echo 'network error'
        date
        echo
        exit 1
        else
        echo 'ping ok'
fi
