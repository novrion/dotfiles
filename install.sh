#!/bin/bash

# ----- Install script for Novrion's Arch Linux -----

minimal=0

while getopts "mh" flag; do
	case $flag in 
		m ) # minimal install
			minimal=1 ;;
		h ) # display help message
			echo "----- Argument List -----"
			echo "-h [display this message]"
			echo "-m [minimal install]"
			echo "-------------------------"
			exit 1 ;;
	esac
done


./scripts/install-minimal.sh

if [ $minimal == 1 ]; then
	exit 0
fi

./scripts/install-extra.sh


echo "============================================="
echo "==========  Finished Installation  =========="
echo "============================================="
exit 0
