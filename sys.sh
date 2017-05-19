#!/bin/bash


function pause(){
  echo "Appuyer sur Enter pour coontinuer"
  read
}
rep=1

while [ "$rep" -ge 1 ]; do
        clear
echo  "	#           AUTOMATISATION DES TACHES  	         #"
echo  "	#------------------------------------------------#"
        printf " menu:\n\n"
        echo "a. Aquisition, insatllation et lancement de l'environnement XAMPP"
        echo "b. Information sur l'utilisation du disque, de la memoire, du processeur et de la swap"
        echo "c. Archivage des éléments du repertoire personnel qui ont été modifiés par l'utlisateur sudoer  il   y a deux jour dans le péripherique externe ."
	echo "d.  Afficher les informations des utilisateur "
	echo -e "q. Quitter !!"
        read -r choix

        case "$choix" in
  
               a)
                  wget http//apachefriends.org/download.html/xampp-linux-x64-5.6.3-0-installer.run;
                  sleep 3
                  echo "téléchargement terminé";
                  sudo chmod 775 xampp-linux-x64-5.6.3-0-installer.run;
                  echo "l'installation dans quelques instant";
                  sleep 2
                  sudo ./xampp-linux-x64-5.6.3-0-installer.run;
                  echo "installation terminée";
                  echo "le lancement de xampp dans 2 secondes";
                  sleep 2
                  sudo /lamp/lamp/ start;
                  pause;;
	       b)
                   vmstat              
                   pause;;
              c)
               tar cvf mon_archive.tar ~
               pause;;
              d)
                
                  pause;;
     
             q)
                echo "Merci pour votre aimable attention !!!"
                exit;;
       esac
done
