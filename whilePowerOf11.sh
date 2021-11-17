#!/bin/bash -x

read -p "Enter the number: " n

powerOf=1
i=1
while (( i<=$n ))
do
	if [ $powerOf -lt 256 ]
	then
		powerOf=$(($powerOf*2))
	else
		echo $powerOf
		exit 0
	fi
(( i++ ))
done
echo $powerOf
