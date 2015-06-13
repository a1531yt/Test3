#!/bin/sh
#

if [ $# -ge 2 ]
then
	/usr/bin/perl -le'sub f{($a,$b)=@_;$b?f($b,$a%$b):$a}print f@ARGV' $1 $2
else
	echo "Usage:"
	echo "$0 Num1 Num2"
	exit 9
fi


exit 0

