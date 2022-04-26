#!/bin/bash

while true;
do
	cd ~/src
	dir=$(pwd)

	if [ "$(ls -A /home/client/Documents/GSLW_TP3_stationcryptage/TP3_stationcryptage/TP3_stationcryptage/toCrypt)" ]; then
		for file in $dir/src/toCrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/src/toCrypt/$txt $dir/src/toCrypt/tocrypt.txt
		
			cd $dir/src
			python3 encrypt.py

			cd $dir/toCrypt
			rm $txt
		done
	fi
done
