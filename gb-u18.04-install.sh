#!/bin/bash
# GET ALL USER INPUT
echo "Domain Name (eg. example.com)?"
read DOMAIN
echo "Username (eg. database name)?"
read USERNAME
echo "Updating OS................."
sleep 2;
sudo apt-get update
adduser $USERNAME
sudo apt-get update && upgrade
sudo apt-get install nginx
sudo ufw allow 'Nginx Full'
sudo apt-get install mysql-server
useradd -u 12345 -g users -d /home/username -s /bin/bash -p $(echo mypasswd | openssl passwd -1 -stdin) username
