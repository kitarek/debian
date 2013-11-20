#!/bin/sh
if [[ $USER != 'root' ]]
then
  echo 'You have to be root to run this aspect'
  exit 1
fi
echo 'deb http://ftp.pl.debian.org/debian/ wheezy non-free' > /etc/apt/sources.list.d/non-free.list
