#!/bin/sh
apt-get install -qq -y equivs
equivs-control /tmp/firefox-template
cat /tmp/firefox-template | egrep '(Standards-Version:|Priority:|Section:)' > /tmp/firefox 
echo """
Package: firefox
Version: 3.0.0
Maintainer: Arkadiusz Kita <arkadiusz.kita@gmail.com>
Architecture: all
Description: A dummy firefox package to fool Debian's package management system (for purposes of Pencil package)
""" >> /tmp/firefox
equivs-build /tmp/firefox > /dev/null
mv firefox_3.0.0_all.deb /tmp/firefox_3.0.0_all.deb
dpkg -i /tmp/firefox_3.0.0_all.deb >/dev/null

file="/tmp/evoluspencil_2.0.5_all.deb"
wget -q -O "${file}" 'http://evoluspencil.googlecode.com/files/evoluspencil_2.0.5_all.deb'
dpkg -i "${file}" >/dev/null
rm "${file}"

