#! /bin/bash

#Checking if ~/src already exists and if not create it.
if [[ -d ~/src ]] 
then
	echo "Src folder already exist."
else 
	sudo mkdir ~/src 	
fi

#Going to the src folder and checking if folder has already been cloned there and if not, clone it.
cd ~/src 
if [[ -d ~/src/TP3_stationcryptage ]]
then
	echo "Repository already cloned to src folder."
else 
	sudo git clone https://github.com/MimRamcharn/TP3_stationcryptage.git
fi

cd ~/Documents/GSLW_TP3_stationcryptage/TP3_stationcryptage/TP3_stationcryptage/bin
# cp -f ~/bin/crypt.sh ~/bin/crypt.sh
sudo chmod +x crypt.sh #give executable rights
#sudo cp -f  ~/bin/decrypt.sh ~/bin/decrypt.sh
sudo chmod +x decrypt.sh #give executable rights


sudo cp -f ~/Documents/GSLW_TP3_stationcryptage/TP3_stationcryptage/TP3_stationcryptage/toCrypt/bin/crypt.service /etc/systemd/system/crypt.service
sudo chmod 644 /etc/systemd/system/crypt.service

sudo cp -f ~/Documents/GSLW_TP3_stationcryptage/TP3_stationcryptage/TP3_stationcryptage/toCrypt/bin/decrypt.service /etc/systemd/system/decrypt.service
sudo chmod 644 /etc/systemd/system/decrypt.service

sudo sudo systemctl start crypt.service
sudo sudo systemctl enable crypt.service
sudo sudo systemctl start decrypt.service
sudo sudo systemctl enable decrypt.service



echo  "Installation Completed!"
