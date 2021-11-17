#!/bin/bash -x

read -p "Enter range to start: " start
read -p "Enter range to end: " end

if [ $start -le $end ]
then
	for (( i=2; i< $start; i++ ))
	do
		if [ $(($start%i)) -eq 0 ]
		then
			start=$(($start+1));
		fi
	done
echo $start
  start=$(($start+1))
fi
