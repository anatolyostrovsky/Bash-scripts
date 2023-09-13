#!/bin/bash


finished=0

while [ $finished -ne 1 ]
do
	echo "Whats your favourite console?"
	
	echo "1 - PlayStation"
	echo "2 - XBox"
	echo "3 - Switch"
	echo "4 - Other"
	echo "5 - Exit the script"

	read distro;
	
	case $distro in
		1) echo "PlayStation have cool exclusive games";;
		2) echo "XBox has amazing services";;
		3) echo "Switch is great fun for whole family";;
		4) echo "There are other cool things";;
		5) finished=1 ;;
		*) echo "Oops, something is wrong here."
	esac
done

echo "That was it :)"
