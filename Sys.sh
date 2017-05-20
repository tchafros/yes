#!/bin/bash
reset

echo
echo "			Bienvenu sur mon projet Sys"
echo
echo "			  Par Mohamadou Mounirou"

fct_menu ()
{
echo "    ------------------------------------------------------------------"
echo "    |     Choisir l'option à éxecuter. Quitter le script avec (Q)    |"
echo "    ------------------------------------------------------------------"
echo
echo " 1: Affiché les utilisateurs enregisté il y'a 3 jour "
echo " 2: Installer et lancé XAMP"
echo " 3: Archivage des élément modifier il y'a 2 jour par sudoer "
echo " 4: Affiché l'état des ressources "

echo
echo -n " Votre Choix > "
echo -n

read optionmenu
    case $optionmenu in
    1)
	reset ;
	Tjour=$(date -d "3 day ago" +%s)
        echo
        utilisateur=$(ls -l /home | grep -E ^d | sed -e ' s/  */ /g' | cut -d ' ' -f 9 ) 

	for fichier in $utilisateur
	do
		echo
		date_creation=$( LC_TIME="eng_GB.UTF-8" ls -l /home/$fichier/.bash_logout | sed -e 's/  */ /g'| cut -d ' ' -f 6-8)
		echo " L'utilisateur $fichier a été crée à la date: $date_creation "
		dateUser=$(date -d "$date_creation" +%s)


		if [ $dateUser -eq $Tjour ]
		then
			echo " -$fichier à été crée il y'a 3 jour."
		fi

		if [ $dateUser -lt $Tjour ]
		then
			echo " -$fichier à été crée il y'a plus de 3 jour."
		fi

		if [ $dateUser -gt $Tjour ]
		then
			echo " -$fichier à été crée il y'a moins de 3 jour."
		fi
	done

        echo
        fct_menu ;;
    2)
	reset ;
        echo
        echo " Téléchargement de Xamp... "
        echo
        wget -O xampp-linux.run https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/5.6.30/xampp-linux-x64-5.6.30-1-installer.run

	chmod 755 xampp-linux.run

	echo " Installation de xamp"
	./xampp-linux.run

	/opt/lampp/lampp security

	echo " Lancement de Xamp"
	/opt/lampp/lampp start

        echo
        echo " Installation et lancement terminer."
        echo
        fct_menu ;;
    3)
	reset ;
        echo
        echo " Liste des péripheriques externe: "
	fdisk -l | grep -E '^/'
        echo
        fct_menu ;;
    4)
        reset ;
	echo
        echo " "
        echo
	echo " Utilisation du disk:"
	echo " ---------------------"
        echo -n " ";
        df -h | head -n 2 |cut -d % -f 1 ; 
	echo
	echo " Utilisation du processeur, de la memoire et du swap:"
	echo " ----------------------------------------------------"
	echo -n " ";
	top | head -n 5| tail -n 3
        echo
        echo " "
        echo
        fct_menu ;;
   
    Q|q)
        reset ;
        exit ;;
    *)
        reset ;
        echo
        echo " Erreur de frappe "
        echo
        fct_menu ;;
        esac
}
fct_menu
