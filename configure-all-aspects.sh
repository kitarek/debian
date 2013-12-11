#!/bin/sh
if [ ${#} -ne 1 ]; then
    echo "Configure system using root account but for specified user only (provided as parameter)"
    echo "Usage: ${0} unix-login"
    exit 1
fi

cmd=`readlink -f ${0}`
cmddir=`dirname $cmd`

for file in `ls -1 ${cmddir}/aspects/*.sh`; do
	echo "$file: running"
	/bin/sh $file ${1}
	echo "$file: exited with ${?}"
done
