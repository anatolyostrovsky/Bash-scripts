#!/bin/bash

app=curl

sudo apt install $app >> install_results.log

if [ $? -eq 0 ]
then
	echo "Installation was successful"
	echo "New commands list:"
	which $app
else
	echo "An error occured" >> install_failure.log
fi
