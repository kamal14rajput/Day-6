#!/bin/bash -x

isHead=1
head=0
tail=0

while [[ head -lt 11 && tail -lt 11 ]]
do
	coinFlip=$((RANDOM%2))
	if [ $isHead -eq $coinFlip ]
	then
		head=$(($head+1))
	else
		tail=$(($tail+1))
	fi
done
echo $head
echo $tail

if [ $head -eq 11 ]
then
	echo "Heads wins"
else
	echo "tails wins"
fi
