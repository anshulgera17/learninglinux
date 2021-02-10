#!/bin/bash
n=$1
[ "$n" == "" ] && echo please give a number and try again && exit
factorial=1; j=1
until [ $j -gt $n ]
do 
	factorial=$(( $factorial * $j ))
	j=$(($j+1))
done
echo The factorial of $n, "$n"'!' = $factorial
exit 0
