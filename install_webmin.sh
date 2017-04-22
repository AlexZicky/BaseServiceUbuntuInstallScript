#!/bin/bash
#

# install Webmin
cd /root
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.791_all.deb
apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
#apt-get -f install
# dpkg --install webmin_1.831_all.deb
dpkg --install webmin_1.791_all.deb