#!/bin/bash -x

read -p "Enter the value of n: " n
powerOf=1

for (( i= 1; i<=$n; i++ ))
do
	powerOf=$(($powerOf*2))
done
echo $powerOf;
