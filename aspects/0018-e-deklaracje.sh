#!/bin/sh
wget -q -O /tmp/adobeair_2.6.0.19170_amd64.deb http://update.devolo.com/linux/apt/pool/main/a/adobeair/adobeair_2.6.0.19170_amd64.deb
dpkg -i /tmp/adobeair_2.6.0.19170_amd64.deb >/dev/null
apt-get install -qq ia32-libs-gtk
apt-get -qq -f -y install
wget -q -O /tmp/e-DeklaracjeDesktop.air http://www.finanse.mf.gov.pl/documents/766655/1196444/e-DeklaracjeDesktop.air
xdg-open /tmp/e-DeklaracjeDesktop.air
