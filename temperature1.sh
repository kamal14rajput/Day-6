#!/bin/bash

echo "Enter your conversion selection:"
echo "a.Celsius to Fahrenheit"
echo "b.Fahrenheit to Celsius"

read -p "Enter your choice: " choice


function fahrenheit() {
		degF=$(echo | awk "{print(($1*9/5)+32)}")
}

function celsius() {
		degC=$(echo | awk "{print($1-32)*(5/9)}")
}

case $choice in
	a)
	  read -p "Enter the temperature in Celsius:" temperature
	  if [ $temperature -gt 0 ] && [ $temperature -lt 100 ]
	  then
	       fahrenheit $temperature
	       echo "Degree in fahrenheit is: " $degF
	  else
	       echo "Enter the temperature between 0 to 100 only!!!"
	  fi
	;;
	b)
	  read -p "Enter the temperature in fahrenheit:" temperature
	  if [ $temperature -gt 32 ] && [ $temperature -lt 212 ]
	  then
	       celsius $temperature
	       echo "Degree in celsius is: " $degC
	  else
	       echo "Enter the temperature between 32 to 212 only!!!"
	  fi
	;;
	*)
	 echo "Enter correct choice!"
	;;
esac
