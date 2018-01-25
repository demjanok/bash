

HOST=10.4.0.1              #This is the FTP servers host or IP address.
USER=SiteZakaz             #This is the FTP user that has access to the server.
PASS=************          #This is the password for the FTP user.
LOCAL_DIR=/var/www/eldo_bike/cache/orders/
LIST_OF_FILES=$(ls $LOCAL_DIR)
#LIST_OF_FILES=$(cd $LOCAL_DIR &&  printf '%s\n' "$PWD"/*)
cd $LOCAL_DIR

echo 'start transfer'

for i in $(echo $LIST_OF_FILES) ; do curl -vT $i ftp://$HOST/ --user $USER:$PASS ; done

echo 'end transfer'

#FILES_ON_FTP=$(curl -l ftp://10.4.0.1/ --user $USER:$PASS)
#cat $FILES_ON_FTP

#mv files from list
echo $LIST_OF_FILES | xargs mv -vt /var/www/eldo_bike/cache/orders_tmp/
