#!/bin/bash

echo "My system info"
myOS=`uname -a`

echo "This script is $0"
echo "Hello $1"

num1=50
num2=45
sum=$((num1+num2))

echo "The sum of $num1 and $num2 equals to $sum"

myhost=`hostname`
mygtw="8.8.8.8"

ping -c 4 $myhost
ping -c 4 $mygtw

echo -n "Done..."
echo "Really done"
