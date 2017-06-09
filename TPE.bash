#!/bin/bash

    echo "Bienvénu sur mon projet sys!"
    echo "a. Information des utilisateurs enrégistrés il y a trois jours !"
    echo "b. Aquisition, installation et lancement de l'environnement XAMP !"
    echo "c. Archivage des élèments du repertoire personnel qui ont été modifié   
       par l'utilisateur sudoers il y a deux jours dans un périphérique externe !"
    echo "d. Information sur l'utilisation du disque, de la mémoire, du processeur et de la SWAP !"
    echo "q. Pour quitter !" 

 j=backup -$(date +%d+%n+%y)
 a=${2:-$j}
    read -r rep
 case $rep in
    a)  who ;;
    b)  sudo apt-get install ia32-lib
        sudo tar xvfz ./xampp-linux- *.tar.gz
        sudo chmod +x xampp-linux-x64-5.6.3-0-installer.run
        sudo ./xamp-linux-x64-5.6.3-0-installer.run
        sudo /opt/lampp/lamppstart ;;
    c)  tar zvcf "$a.tar.gz" ~/ ;;
    d) free;top;; 
    q) exit ;  
 esac
