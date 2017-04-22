#!/bin/bash
#

# install php 7.0 with fpm
apt-get -y install php7.0-fpm

/usr/sbin/nginx -s stop
/usr/sbin/nginx 

cp testphp.php /usr/local/nginx/html