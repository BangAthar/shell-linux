#!/bin/bash

##################################################################################################
# Author: NoxvalDev
# Description : Script auto konfigurasi ini hanya digunakan untuk sistem operasi linux server yang
#               bertujuan untuk mempermudah dan membantu pekerjaan manusia!
##################################################################################################

cy='\033[96m' # Cyan Color
rc='\033[0;31m' # Red Color
c='\e[32m' # Green Color
tc='\033[38;5;11m' # Yellow Color
r='tput sgr0' #Reset Color

echo -e "\n\n\n\n ${rc}
    _         _       ____       _
   / \  _   _| |_ ___/ ___|  ___| |_ _   _ _ __
  / _ \| | | | __/ _ \___ \ / _ \ __| | | | '_ |
 / ___ \ |_| | || (_) |__) |  __/ |_| |_| | |_) |
/_/   \_\__,_|\__\___/____/ \___|\__|\__,_| .__/
                                          |_| 
						  - By NoxvalDev\n\n\n                                                                        
"; $r
sleep 1;

echo -e "${cy}[INFO}${tc}Sebelum memulai menjalakan sistem auto konfigurasi ini pastikan anda berada dalam server linux";
sleep 2;
echo -e "${cy}[INFO}${tc}Script auto config ini hanya di khususkan untuk mengconfigurasi server linux based Debian";
sleep 2;
echo -e "${cy}[INFO}${tc}Direkomendasi untuk menggunakan script ini hanya pengguna AWS";
sleep 2;
read -p "${tc}Apakah yakin menggunakan sistem auto konfigurasi? (y/n): " -r;
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "\n\n"
	echo -e "${c}Memulai sistem auto konfigurasi!" ; $r 
else
	echo -e "${c}Membatalkan sistem auto konfigurasi!"; $r && :
	exit 0
fi