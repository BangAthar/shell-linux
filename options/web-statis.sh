#!/bin/bash

##################################################################################################
# Author: NoxvalDev
# Description : Script auto konfigurasi ini hanya digunakan untuk sistem operasi linux server yang
#               bertujuan untuk mempermudah dan membantu pekerjaan manusia!
##################################################################################################

cy='\033[96m' # Cyan Color
sc='\033[1;31m' # Red Color
c='\e[32m' # Green Color
tc='\033[38;5;11m' # Yellow Color
r='tput sgr0' #Reset Color

echo -e "\n\n\n\n ${cy}

 _     _  _______  _______    _______  _______  _______  _______  ___   _______ 
| | _ | ||       ||  _    |  |       ||       ||   _   ||       ||   | |       |
| || || ||    ___|| |_|   |  |  _____||_     _||  |_|  ||_     _||   | |  _____|
|       ||   |___ |       |  | |_____   |   |  |       |  |   |  |   | | |_____ 
|       ||    ___||  _   |   |_____  |  |   |  |       |  |   |  |   | |_____  |
|   _   ||   |___ | |_|   |   _____| |  |   |  |   _   |  |   |  |   |  _____| |
|__| |__||_______||_______|  |_______|  |___|  |__| |__|  |___|  |___| |_______|

"; $r

sleep 1;

echo -e "${sc}[SERVER] ${tc}Menginstall beberapa kebutuhan dasar server Debian"
echo -e "${sc}[INFO] ${c}- Update dan Upgrade sistem"
echo -e "${sc}[INFO] ${c}- Apache2"
echo -e "${sc}[INFO] ${c}- Git"
echo -n -e "\n${sc}[SERVER] ${tc}"
read -p "Melanjutkan perintah? (y/n): " -r;
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "\n${sc}[INFO] ${c}Melanjutkan!" ; $r 
else
	echo -e "\n${sc}[INFO] ${c}Membatalkan Perintah"; $r && :
	break
fi