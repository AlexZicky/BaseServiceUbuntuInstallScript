#!/bin/bash
#

# install base packet
apt-get update && apt-get upgrade
apt-get -y install htop nload unzip git build-essential libpcre3 libpcre3-dev libssl1.0.0 libssl-dev