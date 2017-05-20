#!/bin/bash

echo "BIEN VENUE SUR MON PROJET SYS"
echo "CHOISIR L'OPTION A EXECUTER"
echo "a - les informations sur les utilisateurs enregistrer il ya 3 jours"
echo " b - aquisition et installation de xampp "
echo " c - archivage des elts du rep pers modifier par le sudoer il ya 2 jours"
echo " d - infos d'utilisation du disque,memoire,disque,processus,swap  "
read -r choix
#if [ $choix == 'a' ]; then
#	echo "le choix est a"
#fi
case $choix in 
	'a') cut -d : -f 1 /etc/passwd>tt
	sleep 5
	ls /home>fil
	sleep 5
	while read line 
	do
		while read line1
		do	
		if [ $line == $line1 ] ; then 
		echo $line1>user1
		fi
		done<fil
	done<tt
	find /home/* -type d -ctime 3 -print>userx

	while read line1
	do
	   while read user
	   do 
	      if [ $line1 == '/home/'$user ] ; then
		echo " $user a ete cree il ya 2jour">end1.txt
	      fi

	  done<user1 
	done<userx
	
 ;;
	'b') echo " xampp"
	 #wget https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/5.6.30/xampp-linux-x64-5.6.30-1-installer.run?from_af=true
	 #echo " insatllation "
	 #./xampp-linux-x64-5.6.30-1-installer.run
	#echo "demarage des service  entrez votre password"
	 sudo su
	#arret du service apache 
	service apache2 stop
	#arret du service ftp
	service proftpd stop
	#demarage de xampp
	/opt/lampp/lampp start


;;
	'c') echo "le choix est c";;
	'd') echo "les informations sur l'utilisation du disque :"
		df -h
		echo "les informations sur l'utilisation de la memoire et de la swap :"
		free
;;
	* )  exit 1 ;;
esac


