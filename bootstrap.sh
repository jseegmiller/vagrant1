#!/bin/bash

apt-get update
apt-get install -y apache2
apt-get install -y libapache2-mod-php
apt-get install -y python-software-properties
add-apt-repository -y ppa:ondrej/php
apt-get update
apt-get install -y php7.2

mv /var/www/html /var/www/html.0
mkdir /var/www/html
ln -s /vagrant/web /var/www/html/web
sudo rm /etc/apache2/sites-enabled/000-default.conf
ln -s /vagrant/virtualhosts/default /etc/apache2/sites-enabled/000-default.conf
service apache2 reload

