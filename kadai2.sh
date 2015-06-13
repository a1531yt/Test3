#!/bin/sh
# 

if [ $# -ge 2 ]
then
	# for DEBUG Option.
	if [ $# -ge 3 ]
	then
		export PATH=""
	fi

	perl -le 'sub f{($a,$b)=@_;$b?f($b,$a%$b):$a}print f@ARGV' $1 $2

	if [ $? -ne 0 ]
	then
		exit 9
	fi
else
	echo "Usage:"
	echo "$0 Num1 Num2"
	exit 1
fi

exit 0

