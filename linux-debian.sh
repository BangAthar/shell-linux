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

echo -e "\n\n\n\n ${d}

  ____  __ __  ______   ___        _____   ___ ______  __ __  ____      
 /    ||  |  ||      | /   \      / ___/  /  _]      ||  |  ||    \     
|  o  ||  |  ||      ||     |    (   \_  /  [_|      ||  |  ||  o  )    
|     ||  |  ||_|  |_||  O  |     \__  ||    _]_|  |_||  |  ||   _/     
|  _  ||  :  |  |  |  |     |     /  \ ||   [_  |  |  |  :  ||  |       
|  |  ||     |  |  |  |     |     \    ||     | |  |  |     ||  |       
|__|__| \__,_|  |__|   \___/       \___||_____| |__|   \__,_||__|       
                                                                        
"; $r
sleep 2;

echo -e "${rc}

 ____   __ __ 
|    \ |  |  |
|  o  )|  |  |
|     ||  ~  |
|  O  ||___, |
|     ||     |
|_____||____/ 
              

"; $r
sleep 2;

echo -e "${rc}

 ____    ___   __ __  __ __   ____  _      ___      ___ __ __ 
|    \  /   \ |  |  ||  |  | /    || |    |   \    /  _]  |  |
|  _  ||     ||  |  ||  |  ||  o  || |    |    \  /  [_|  |  |
|  |  ||  O  ||_   _||  |  ||     || |___ |  D  ||    _]  |  |
|  |  ||     ||     ||  :  ||  _  ||     ||     ||   [_|  :  |
|  |  ||     ||  |  | \   / |  |  ||     ||     ||     |\   / 
|__|__| \___/ |__|__|  \_/  |__|__||_____||_____||_____| \_/  
                                                              
" $r;

echo -n "${tc}Sebelum memulai menjalakan sistem auto konfigurasi ini pastikan anda berada dalam server linux";
sleep 1;
echo -n "${tc}Script auto config ini hanya di khususkan untuk mengconfigurasi server linux based Debian";
sleep 1;
echo -n "${tc}Direkomendasi untuk menggunakan script ini hanya pengguna AWS";