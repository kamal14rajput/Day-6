#!/bin/bash

read -p "Enter first number:" num1
read -p "Enter secound number: " num2

function palindrome() {
		num=$1
		rev=0
		while [ $num -ne 0 ]
		do
			rem=$((num%10))
			rev=$((rev*10+rem))
			num=$((num/10))
		done
	
		if [ $1 -eq $rev ]
		then
			echo "This number is palindrome:" $1
		else
			echo "This number is not palindrome:" $1
		fi
}


#Calling function for number 1

palindrome $num1

#Calling function for number 2

palindrome $num2
