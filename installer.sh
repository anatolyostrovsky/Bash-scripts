#!/bin/bash

app=curl

sudo apt install $app

if [ $? -eq 0 ]
then
	echo "Installation was successful"
	echo "New commands list:"
	which $app
else
	echo "An error occured"
fi
