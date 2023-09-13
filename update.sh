#!/bin/bash



releaseFile = /etc/os-release
logFile = /var/log/update.log
logUpdateError= /var/log/update_errors.log


checkExitStatus() {
	if [ $? -ne 0 ]
	then
		echo "An error occured, plese check the $logUpdateError file."
	fi
}

if grep -q "Arch" $releaseFile
# ArchLinux update
then
	sudo pacman -Syu 1>>$logFile 2>>$logUpdateError
	checkExitStatus
fi

if grep -q "Ubuntu" $releaseFile || grep -q "Ubuntu" $releaseFile
# Debian or Ubuntu update
then
	sudo apt update 1>>$logFile 2>>$logUpdateError
	checkExitStatus

	sudo apt dist-upgrade 1>>$logFile 2>>$logUpdateError
	checkExitStatus
fi
