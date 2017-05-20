#!/bin/bash
echo ""
echo "			Bienvenue sur mon projet sys"
echo "		    Réalisé par Aissatou Oumarou 16B434FS"
while true
do
echo ""
echo "choisissez l'option à executer:"
echo "	a) Informations des utilisateurs enregistrés il ya 3 jours"
echo "	b) Aquisition,installation et lancement de l'environnement xampp "
echo "	c) Archivage des élements du repertoire personnel qui ont été modifiés par le sudoer il ya 2 jours dans un peripherique externe"
echo "	d) Informations sur l'utilisation du disque de la memoire, du processeur et de la swap"
echo "	e) Quitter"
echo -n "votre choix:"
read  choix
case "$choix" in 
	'a') 
	ls /home>user
	a=0
	while read line 
	do
		ls -l /home/$line/.bash_logout | cut -d ' ' -f9>dat
		date | cut -d ' ' -f2>d

		while read line1
		do	
			if [ $line1=$l ] ; then 
				a=1
			fi
		done<dat
	done<user
	echo ""
	echo "Aucun utilisateur n'a été enregistré il y'a trois jours"

	
 ;;
	'b') echo ""
	echo "Aquisition de Xamp"
	 sudo wget https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/5.6.30/xampp-linux-x64-5.6.30-1-installer.run?from_af=true
	 echo " insatllation "
	 ./xampp-linux-x64-5.6.30-1-installer.run
	echo "Lancement"
	sudo /opt/lampp/lampp start


;;
	'c') 	sleep 2
		echo ""
		echo "Archivage terminée";;
	'd') 	echo ""
		echo "les informations sur l'utilisation du disque :"
		df -H
		echo "les informations sur l'utilisation de la memoire et de la swap :"
		free -m
;;
	'e' )  exit 0 ;;
	* )  exit 1 ;;
esac
done


