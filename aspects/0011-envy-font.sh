#!/bin/sh
file=/tmp/EnvyCodeR-PR7.zip
wget -q -O ${file} http://download.damieng.com/fonts/original/EnvyCodeR-PR7.zip
tmpdir=$(mktemp -d)
unzip -d ${tmpdir} ${file} >/dev/null
rm ${file}
dir=/usr/share/fonts/truetype/ttf-envy
mkdir -p "${dir}"
mv ${tmpdir}/Envy\ Code\ R\ PR7/*.ttf "${dir}"
