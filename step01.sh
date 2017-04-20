#!/bin/bash
#
# update system
#
# install base packet

apt-get update && apt-get upgrade

apt-get -y install htop nload unzip git build-essential libpcre3 libpcre3-dev libssl1.0.0 libssl-dev


# download untar configure compile and install ngnix for web server and rtmp

cd /root && mkdir nginx && cd nginx


wget http://nginx.org/download/nginx-1.11.13.tar.gz

tar -xzf nginx-1.11.13.tar.gz

cd nginx-1.11.13 && mkdir modules && cd modules

git clone https://github.com/FRiCKLE/ngx_cache_purge.git


cd .. && cd ..

wget https://github.com/arut/nginx-rtmp-module/archive/master.zip
unzip master.zip
cd nginx-1.11.13


./configure \
--sbin-path=/usr/sbin \
--conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log \
--pid-path=/var/run/nginx.pid \
--lock-path=/var/lock/nginx.lock \
--http-log-path=/var/log/nginx/access.log \
--http-client-body-temp-path=/var/lib/nginx/body \
--http-proxy-temp-path=/var/lib/nginx/proxy \
--http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
--with-debug \
--with-http_stub_status_module \
--with-http_flv_module \
--with-http_ssl_module \
--with-http_dav_module \
--with-http_gzip_static_module \
--with-http_realip_module \
--with-mail \
--with-mail_ssl_module \
--add-module=../nginx-rtmp-module-master \
--add-module=./modules/ngx_cache_purge \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_secure_link_module

make && make install

mkdir -p /var/lib/nginx/body \
mkdir -p /var/lib/nginx/proxy \
mkdir -p /var/lib/nginx/fastcgi \
mkdir -p /var/lib/nginx/uwsgi \
mkdir -p /var/lib/nginx/sc 

/usr/sbin/nginx -v # check ngnix version

/usr/sbin/nginx # start ngnix

# install php 7.0 with fpm

apt-get -y install php7.0-fpm

/usr/sbin/nginx -s stop
/usr/sbin/nginx 

#

