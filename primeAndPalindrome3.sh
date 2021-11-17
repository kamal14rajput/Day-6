#!/bin/bash

read -p "Enter the number: " num

#for prime
function prime() {
	
	for (( i= 2; i< $1; i++ ))
	do
		if [ $(($1%i)) -eq 0 ]
		then
			echo $1 "is not prime number"
			break
		fi
	echo  $1 "is a prime number"
	done
}

#for palindrome
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
                        echo "number is palindrome" $1
                else
                        echo "number is not palindrome" $1
                fi
}


#for prime number
prime $num

#for palindrome
palindrome $num

#checking of palindrome num is also prime or not
prime $rev
