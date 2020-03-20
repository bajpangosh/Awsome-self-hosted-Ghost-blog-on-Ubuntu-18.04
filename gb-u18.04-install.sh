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

  22  cd /var/www/
   23  ls
   24  cd ~
   25  ls
   26  sudo mysql
   27  sudo npm install ghost-cli@latest -g
   28  sudo mkdir -p /var/www/ghost
   29  sudo chown bachu:bachu /var/www/ghost
   30  sudo chmod 775 /var/www/ghost
   31  cd /var/www/ghost
   32  ghost install
   33  ghost uninstall
   34  ghost install
   35  ghost setup
   36  mysql -uroot -p
   37  exit

