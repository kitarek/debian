#!/bin/sh
echo "deb http://ftp.pl.debian.org/debian/ wheezy contrib" > /etc/apt/sources.list.d/contrib.list
apt-get -qq update
