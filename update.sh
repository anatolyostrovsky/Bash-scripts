#!/bin/bash

releaseFile=/etc/os-release

if grep -q "Arch" $releaseFile
# ArchLinux update
then
	sudo pacman -Syu
fi

if grep -q "Ubuntu" $releaseFile || grep -q "Ubuntu" $releaseFile
# Debian or Ubuntu update
then
	sudo apt update
	sudo apt dist-upgrade
fi
