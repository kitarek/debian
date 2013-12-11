#!/bin/sh
dpkg --add-architecture i386
apt-get -qq update
apt-get -qq upgrade
wget -q -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
dpkg -i skype-install.deb >/dev/null
apt-get -qq -y -f install
apt-get install -qq -y gir1.2-notify-0.7
