#!/bin/bash

sudo yum install mailx -y
export VISUAL=vi
sudo chmod o+w /etc/postfix/main.cf
sed -i 's/inet_protocols = all/inet_protocols = ipv4/' /etc/postfix/main.cf
sudo chmod o-w /etc/postfix/main.cf
sudo crontab /vagrant/provision/cron-file.txt
bash /vagrant/provision/readlog.sh
