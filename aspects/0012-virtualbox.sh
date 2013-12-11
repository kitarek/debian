#!/bin/sh
apt-get install -qq -y virtualbox

file="Oracle_VM_VirtualBox_Extension_Pack-4.1.28-89849.vbox-extpack"
wget -q -O "./${file}" "http://download.virtualbox.org/virtualbox/4.1.28/${file}"
fullfile=$(readlink -f ./${file})
echo """
Installing extension pack
-------------------------

1. In VM VirtualBox Manager, type Ctrl+G (Global settings)
2. Click on 'Extensions' pane.
3. Click add package and select this file:
     $fullfile
"""
usermod -a -G vboxusers ${1}
