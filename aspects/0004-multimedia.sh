#!/bin/sh
apt-get install -qq debian-keyring
echo "deb http://debian.oppserver.net/xbmc/ wheezy main non-free contrib" > /etc/apt/sources.list.d/oppxbmc.sources.list
echo "deb-src http://debian.oppserver.net/xbmc/ wheezy main non-free contrib" >> /etc/apt/sources.list.d/oppxbmc.sources.list
echo "deb-src http://debian.oppserver.net/xbmc/ wheezy main non-free contrib" > /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb http://www.deb-multimedia.org/ wheezy main non-free" >> /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb-src http://www.deb-multimedia.org/ wheezy main" >> /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb http://www.deb-multimedia.org/ wheezy-backports main" >> /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb-src http://www.deb-multimedia.org/ wheezy-backports main" >> /etc/apt/sources.list.d/deb-multimedia.sources.list
wget -q http://debian.oppserver.net/gpg-debian.oppserver.net-signing-pubkey.asc -O - | apt-key add -
gpg --keyring /usr/share/keyrings/debian-keyring.gpg -a --export 07DC563D1F41B907 | apt-key add -
apt-get -qq update
