#!/bin/sh
echo "deb http://debian.oppserver.net/xbmc/ wheezy main non-free contrib" > /etc/apt/sources.list.d/oppxbmc.sources.list
echo "deb-src http://debian.oppserver.net/xbmc/ wheezy main non-free contrib" >> /etc/apt/sources.list.d/oppxbmc.sources.list
echo "deb-src http://debian.oppserver.net/xbmc/ wheezy main non-free
contrib" > /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb http://www.deb-multimedia.org/ wheezy main non-free" >> /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb-src http://www.deb-multimedia.org/ wheezy main" >> /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb http://www.deb-multimedia.org/ wheezy-backports main" >> /etc/apt/sources.list.d/deb-multimedia.sources.list
echo "deb-src http://www.deb-multimedia.org/ wheezy-backports main" >> /etc/apt/sources.list.d/deb-multimedia.sources.list

