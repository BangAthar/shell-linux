#!/bin/bash

##################################################################################################
# Author: NoxvalDev
# Description : Script auto konfigurasi ini hanya digunakan untuk sistem operasi linux server yang
#               bertujuan untuk mempermudah dan membantu pekerjaan manusia!
##################################################################################################

cy='\033[0;96m' # Cyan Color
sc='\033[1;31m' # Red Color
c='\e[0;32m' # Green Color
tc='\033[0;11m' # Yellow Color
r='tput sgr0' #Reset Color

echo -e "\n\n\n\n ${cy}
    _         _       ____       _
   / \  _   _| |_ ___/ ___|  ___| |_ _   _ _ __
  / _ \| | | | __/ _ \___ \ / _ \ __| | | | '_ |
 / ___ \ |_| | || (_) |__) |  __/ |_| |_| | |_) |
/_/   \_\__,_|\__\___/____/ \___|\__|\__,_| .__/
                                          |_| 
						  - By NoxvalDev\n\n\n                                                                        
"; $r
sleep 2;
echo -e "${sc}##################################"
echo -e "${sc}# ${tc}AutoSetup V1.0.0"
echo -e "${sc}# ${tc}Author By Noxval"
echo -e "${sc}##################################"
echo -e "\n\n";
$r
sleep 1;
echo -e "${sc}[SERVER]${tc}Script auto config ini hanya di khususkan untuk mengconfigurasi server linux based Debian";
sleep 2;
echo -e "${sc}[SERVER]${tc}Direkomendasi untuk menggunakan script ini hanya pengguna AWS";
sleep 2;
echo -n -e "\n${sc}[SERVER]${rb}  ${tc}"
read -p "Apakah yakin menggunakan sistem auto konfigurasi? (y/n): " -r;
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "\n${sc}[INFO]${rb}  ${c}Memulai sistem auto konfigurasi!" ; $r 
else
	echo -e "\n${sc}[INFO]${rb}  ${c}Membatalkan sistem auto konfigurasi!"; $r && :
	exit 0
fi

echo -e "${cy}
 _______  _______  _______  ___   _______  __    _  _______ 
|       ||       ||       ||   | |       ||  |  | ||       |
|   _   ||    _  ||_     _||   | |   _   ||   |_| ||  _____|
|  | |  ||   |_| |  |   |  |   | |  | |  ||       || |_____ 
|  |_|  ||    ___|  |   |  |   | |  |_|  ||  _    ||_____  |
|       ||   |      |   |  |   | |       || | |   | _____| |
|_______||___|      |___|  |___| |_______||_|  |__||_______|
"

echo -e "${sc}[SERVER] ${tc}Pilihlan opsi menu instalasi dan konfigurasi pada server Debian!"
options=("Web Statis" "Web CRUD PHP" "Web Laravel" "FTP" "MySQL" "Keluar")
echo -e -n "${c}"
select opt in "${options[@]}"
do
case $opt in
        "Web Statis")
            echo -e "\n"
            echo -e "${sc}[INFO] ${c}Memilih untuk melakukan instalasi dan konfigurasi Web Statis";
            sleep 1;
            echo -e "${sc}[SERVER] ${tc}Memulai konfigurasi dalam waktu"
            for i in {5..1}
            do
                echo -e "${sc}[SERVER] ${tc}$i"
                sleep 1
            done
            echo -e "\n\n"
            echo -e "${sc}[SERVER] ${tc}Membersihkan screen linux"
            sleep 3 ; 
            clear
            ./options/web-statis.sh
            ;;
        "Web CRUD PHP")
            echo "Web CRUD PHP"
            ;;
        "Web Laravel")
            echo "Web Laravel"
            ;;
        "FTP")
            echo "FTP"
            ;;
        "MySQL")
            echo "FTP"
            ;;

        "Keluar")
            break
            ;;
        *)
            echo "Pilihan tidak valid, silakan coba lagi"
            ;;
    esac
done
$r