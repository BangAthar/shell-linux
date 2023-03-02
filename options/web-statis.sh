#!/bin/bash

##################################################################################################
# Author: NoxvalDev
# Description : Script auto konfigurasi ini hanya digunakan untuk sistem operasi linux server yang
#               bertujuan untuk mempermudah dan membantu pekerjaan manusia!
##################################################################################################

rb='\033[0m'
cy='\033[96m' # Cyan Color
sc='\033[0;31m' # Red Color
c='\e[32m' # Green Color
tc='\033[38;5;11m' # Yellow Color
r='tput sgr0' #Reset Color

echo -e "\n\n${cy}

 _     _  _______  _______    _______  _______  _______  _______  ___   _______ 
| | _ | ||       ||  _    |  |       ||       ||   _   ||       ||   | |       |
| || || ||    ___|| |_|   |  |  _____||_     _||  |_|  ||_     _||   | |  _____|
|       ||   |___ |       |  | |_____   |   |  |       |  |   |  |   | | |_____ 
|       ||    ___||  _   |   |_____  |  |   |  |       |  |   |  |   | |_____  |
|   _   ||   |___ | |_|   |   _____| |  |   |  |   _   |  |   |  |   |  _____| |
|__| |__||_______||_______|  |_______|  |___|  |__| |__|  |___|  |___| |_______|

"; $r

sleep 1;
echo -e "${sc}###########################################################"
echo -e "${sc}[SERVER] ${tc}Melakukan setup instalasi Web Server Statis"
echo -e "${sc}###########################################################"
echo -e "\n";
$r

echo -e "${sc}[SERVER] ${tc}Menginstall beberapa kebutuhan dasar server Debian"
echo -e "${sc}[INFO]${rb} ${c}- Update dan Upgrade sistem"
echo -e "${sc}[INFO]${rb} ${c}- Apache2"
echo -e "${sc}[INFO]${rb} ${c}- Git"
echo -n -e "${sc}[SERVER] ${tc}"
read -p "Melanjutkan perintah? (y/n): " -r;
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "\n${sc}[INFO]${rb} ${c}Melanjutkan!" ; $r 
else
	echo -e "\n${sc}[INFO]${rb} ${c}Membatalkan Perintah"; $r
fi
apt update -y && apt upgrade -y
apt --fix-broken install -y
apt install apache2 -y
apt install git -y
if [ $? -ne 0 ]; then
    echo -e "${sc}[INFO]${rb} ${c}Gagal melakukan instalasi kebutuhan dasar server Debian!" >&2
    exit 1
fi
echo -e "${sc}[INFO]${rb} ${c}Berhasil Menginstall kebutuhan dasar server Debian"
sleep 2;

sleep 1;
echo -e "${sc}[SERVER] ${tc}Masuk kedalam direktori /var/www/html"
cd /var/www/html
sleep 1;
echo -e "${sc}[INFO]${rb} ${c}Memberikan visual isi direktori /var/www/html" $rb
ls -l
echo -e "${sc}[SERVER] ${tc}Terdapat file bernama index.html yang akan dihapus"
sleep 3;
echo -e "${sc}[SERVER] ${tc}Menghapus file index.html"
rm -r index.html

echo -e "${sc}[SERVER] ${tc}Memberikan visual isi direktori /var/www/html" $rb
ls -l
echo -e "${sc}[INFO]${rb} ${c}Berhasil menghapus file index.html" $rb
echo -e "\n";
sleep 2;

echo -e "${sc}###########################################################"
echo -e "${sc}[INFO]${rb} ${c}Setup instalasi berhasil!"
echo -e "${sc}###########################################################"
echo -e "\n";
$r
sleep 2;
clear

echo -e "${sc}##############################################################################################################"
echo -e "${sc}[SERVER] ${tc}Setup instalasi web server berhasil dilakukan, Ada beberapa hal yg perlu dilakukan untuk mengkonfigurasi Web Server Statis, yaitu :"
echo -e "${sc}[SERVER] ${tc}1. Mengkloning dari github atau mengupload website"
echo -e "${sc}[SERVER] ${tc}2. Mengubah konfigurasi virtual host pada Apache2"
echo -e "${sc}[SERVER] ${tc}3. Merestart service Apache2"
echo -e "${sc}##############################################################################################################"
$r
echo -e "\n";
echo -e -n "${sc}[SERVER] ${tc}"
read -p "Apakah konfigurasi ini mau dilakukan secara manual atau otomatis? Jika otomatis pilih Y (y/n): " -r;
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "${sc}[INFO]${rb} ${c}Melanjutkan!" ; $r 
	sleep 1;
else
	echo -e "${sc}[INFO]${rb} ${c}Melanjutkan konfigurasi web secara manual" ; $r
	sleep 1;
	echo -e "${sc}[SERVER] ${tc}Mematikan sistem auto konfigurasi" ; $r
	sleep 2;
	echo -e "${sc}[INFO]${rb} ${c}Berhasil dimatikan!" ; $r
	exit;
fi
echo -e "\n"
echo -e -n "${sc}[SERVER] ${tc}"
read -p "Masukan URL repository github web statis : " linkgithub;
echo -e -n "${sc}[SERVER] ${tc}"
read -p "Apakah URL repository github sudah benar? (y\n) : " -r;
echo -e "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "${sc}[SERVER] ${tc}Mengcloning web dari github ke server" ; $r 
	sleep 1;
else
	echo -e -n "${sc}[SERVER] ${tc}"
	read -p "Masukan URL repository github web statis" linkgithub;
fi
git clone $linkgithub
echo -e "${sc}[SERVER] ${tc}Memberikan visual isi direktori /var/www/html" ; $r
ls -l
sleep 1;
echo -e "${sc}[INFO] ${c} Berhasil mengcloning website dari repo github ke dalam server" ; $r
sleep 3;
echo -e "${sc}[SERVER] ${tc}Memberikan permission ke direktori website" ; $r
chmod 777 -R /var/www/html/*
sleep 1;
echo -e "${sc}[INFO] ${c} Berhasil mengubah permission" ; $r
sleep 1;


