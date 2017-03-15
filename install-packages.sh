#!/data/data/com.termux/files/usr/bin/bash

apt update
apt upgrade
apt install -y vim openssh coreutils mosh termux-api tree nodejs-dev
npm install -g http-server
mkdir $HOME/www
ln -s /etc/hosts $HOME/www/
