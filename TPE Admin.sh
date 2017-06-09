#!/bin/bash

        echo"Bievenue sur mon projet syst"
        echo "a. Afficher les informations des utilisateur "
        echo "b. Aquisition, insatllation et lancement de l'environnement XAMPP"
        echo "c. Archivage des éléments du repertoire personnel qui ont été modifiés par l'utlisateur 		  sudoer il y'a deux jour dans le péripherique externe ."
	echo "d. Information sur l'utilisation du disque, de la memoire, du processeur et de la swap"
	echo -e "q. Quitter !!"
        read choix

        case "$choix" in
  
               a) ;;
                   
	       b) wget  https://www.apachefriends.org/xampp-files/7.0.18/xampp-osx-7.0.18-0-installer.dmg;
		   chmod 755 xampp-linux-*-installer.run;
		   sudo ./xampp-linux-*-installer.run;
		   sudo /opt/lampp/lampp start;;

		c) ;;

		d) vmstat;;
               

                q) exit;;
                  
        esac
   
