#!/bin/bash

if   [ "$1" == "Anatoly" ]; then
	echo "Hello $1"
elif [ "$1" == "John" ]; then
	echo "Hi, John"
else echo "Welcome $1"
fi

read -p "Enter Your name or number: " x

echo "Starting CASE selection..."
case $x in
	1) echo "This is one";;
    [2-9]) echo "Two-Nine";;
   "Oleg") echo "Hello $x";;
	*) echo "Unknown Value, Sorry..."
esac
