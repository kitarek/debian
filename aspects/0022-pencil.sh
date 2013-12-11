#!/bin/sh
file="/tmp/evoluspencil_2.0.5_all.deb"
wget -q -O "${file}" 'http://evoluspencil.googlecode.com/files/evoluspencil_2.0.5_all.deb'
dpkg --force-depends -i "${file}" >/dev/null
rm "${file}"

