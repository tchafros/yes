#!/bin/bash
echo "**************************************************************************";
echo "*  Daye Abraham 13A099FS L3AR _ TP Admin *";
echo "* Quelle opération souhaitez-vous effectuer ? *";
echo "* a) les informations des utilisateurs                                    *";
echo "* b)  acquisition ,instation et lancement de l'environement xampp          *";
echo "* c) archivage de repertoire personnel                                    *";
echo "* d) information sur l'utilisation du disque ,de la memoire,du processeur et de la swap";
echo " q) pour quiter le programme                                             *";
echo "**************************************************************************";
 read x;
    while (test $x != q)
    do
          if(test $x = a) then
              echo "***************************************************************************************";
             echo "les  information des utilisateur : ";
              ls   /home ;
               echo "**************************************************************************************";
             else
               if(test $x = b) then
                   echo "entrez le mot de passe du root  pour telecharger  xampp-linux  ";
                   sudo wget https://www.apachefriends.org/fr/download_success.html/xampp-linux-x64-5.6.30-1-installer.run;
                   echo "fin de  tellechargement du xampp";
                   echo " debut instalation de votre environement";
                   sudo chmod 777 xampp-linux-x64-5.6.30-1-installer.run;
                   sudo ./xampp-linux-x64-5.6.30-1-installer.run;
                   echo " fin de l'installation de votre environement";

                   echo " lencement de xampp";
                   sudo /lamp/lamp start;
                   echo " lencement termine ";
                 else
                   if(test $x = c) then
                      sudo find . -ctime -2>fichier2 > cat | tar cvf fichier2.tar fichier2 ; echo "est conpressé en .tar " ;
                     else
                        if(test $x = d) then
                          echo " voici l'information liee au disque; a la memoire; au processeur et swap";
                          top | head -6;
                           df ;
                         else
                           echo " lettre non valide";
                       fi
                  fi
          fi
    fi
   echo " Entrez  une autre lettre pour contunier";
  echo "*******************************************************************************************************";
  read x;
done
 echo "merci!"; 
