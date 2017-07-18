HOST=10.4.0.1              #This is the FTP servers host or IP address.
USER=SiteZakaz             #This is the FTP user that has access to the server.
PASS=*******          #This is the password for the FTP user.
#LOCAL_DIR=/root/test/
LOCAL_DIR=/var/www/eldo_bike/cache/orders/




# Call 1. Uses the ftp command with the -inv switches.
#-i turns off interactive prompting.
#-n Restrains FTP from attempting the auto-login feature.
#-v enables verbose and progress.
#-d debug mode

ftp -invd $HOST << EOF
user $USER $PASS
lcd $LOCAL_DIR
put *
bye
EOF
