#!/bin/bash
#

# install Maria-DB
apt-get install mariadb-server mariadb-client -y
service mysql status
mysql_secure_installation

# Getting MySQL Support In PHP 7
apt-cache search php7.0
apt-get -y install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext php-apcu
service php7.0-fpm reload