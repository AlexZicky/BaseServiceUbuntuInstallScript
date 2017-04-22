#!/bin/bash
#

# install FFMPEG
apt-get install software-properties-common
add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
apt-get update
apt-get install ffmpeg