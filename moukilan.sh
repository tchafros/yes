#!/bin/bash
echo "                                          !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
echo "                                                 =========================================== ";
echo "                                                       +++++++++++++++++++++++++++++++ ";
echo "                                                                 PROJET: syst. ";
echo "                                                            MOUKILAN MAHAMAT 15A819FS ";

echo " a :Information sur les utilisateurs. ";
echo " b :Telecharger,installer et lancer l'environement xampp. ";
echo " c :Archivage des elements du repertoire personnelle qui ont ete modifier par l'utilisateur sudoer il y'a deux jours dans un peripherique externe.";
echo " d :Information sur l'utilisation du disque, de la memoire, du processeur et de la swap. ";
echo "                                                        +++++++++++++++++++++++++++++++ ";
echo "                                                 ============================================ ";
echo "                                          !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
echo "                                                              '                   '";
echo "                                                                Faitez votre choix";
read x;
    while (test $x != q ) 
    do
      if(test $x = a ) then
         echo "";
         echo "Information sur les utilisateurs. ";
          ls -lth /home ;
         echo "";
          else
           if(test $ = b ) then
         echo "Entrez votre mot de passe.  ";
        sudo wget http://apachefriends.org/fr/download_success.html/xampp-linux-64-5.6.30-1-installer.run;
       
        echo "Fin de l'installation de xampp.";
       sudo chmod 775 xampp-linux-64-5.6.30-1-installer.run;
       sudo ./xampp-linux-64-5.6.30-1-installer.run;
        echo "Lancement de xampp.";
        sudo /lamp/lamp start;
        echo "Fin du lancement.";
         else
           if(test $x = c )then
          sudo find . -ctime -2> fichier1 | tar cvf fichier1.tar fichier1;
        echo "Archivage en cours";
         
         else
           if(test $x = d )then
       echo "Information liee au disk; a la memoire; au processeur et a la swap";
        top | head -6;
        df ;
      fi
     fi
    fi
   fi
echo "Entre q pour sortir ";
echo "Autre lettre pour continuer";
read x;
done


