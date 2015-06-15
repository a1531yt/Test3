#!/bin/sh
#

while read i
do
	for j in `fgrep "$1 $2" check_master.txt | awk -e '{print $3}'`
	do
		echo -n $i
		if [ $i -eq $j ]
		then
			echo ' is OK.'
		else
			echo ' is NG.'
			exit 2
		fi
	done
done

exit 0

