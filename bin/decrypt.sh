#!/bin/bash


while true;
do
	cd ~/src
	dir=$(pwd)

	if [ "$(ls -A /home/client/Documents/GSLW_TP3_stationcryptage/TP3_stationcryptage/TP3_stationcryptage/toDecrypt)" ]; then
		for file in $dir/src/toDecrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/src/toDecrypt/$txt $dir/src/toDecrypt/todecrypt.txt
		
			cd $dir/src
			python3 decrypt.py

			cd $dir/src/toDecrypt
			rm $txt
		done
	fi
done
