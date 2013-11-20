#!/bin/sh

cmd=`readlink -f ${0}`
cmddir=`dirname $cmd`

for file in `ls -1 ${cmddir}/aspects/*.sh`; do
	echo "$file: running"
	/bin/sh $file
	echo "$file: exited with ${?}"
done
