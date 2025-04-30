#!/bin/bash
# creates dirs from N to N+10


echo Hello World!

cur=1

while [[ "$cur" -le 10 ]];
do
	echo "$cur"
	cur=$(( cur + 1 ))
done
