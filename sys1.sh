@@ -0,0 +1,70 @@ 
 1 +#!/bin/bash  
 2 +  
 3 +echo "BIENVENUE SUR MON PROJET SYS"  
 4 +  
 5 +ech  "AHMADOU SOULEYE DOUNI 13A075FS"  
 6 +  
 7 +echo "CHOISIR L'OPTION A EXECUTER"  
 8 +  
 9 +echo " a- les informations sur les utilisateurs enregistrer il ya 3 jours"  
 10 +echo " b - aquisition et installation de xampp "  
 11 +echo " c - archivage des elts du rep pers modifier par le sudoer il ya 2 jours"  
 12 +echo " d - infos d'utilisation du disque,memoire,disque,processus,swap  "  
 13 +  
 14 +read -r choix  
 15 +#if [ $choix == 'a' ]; then  
 16 +#	echo "le choix est a"  
 17 +#fi  
 18 +case $choix in   
 19 +	'a') cut -d : -f 1 /etc/passwd>tt  
 20 +	sleep 5  
 21 +	ls /home>fil  
 22 +	sleep 5  
 23 +	while read line   
 24 +	do  
 25 +		while read line1  
 26 +		do	  
 27 +		if [ $line == $line1 ] ; then   
 28 +		echo $line1>user1  
 29 +		fi  
 30 +		done<fil  
 31 +	done<tt  
 32 +	find /home/* -type d -ctime 3 -print>userx  
 33 +  
 34 +	while read line1  
 35 +	do  
 36 +	   while read user  
 37 +	   do   
 38 +	      if [ $line1 == '/home/'$user ] ; then  
 39 +		echo " $user a ete cree il ya 2jour">end1.txt  
 40 +	      fi  
 41 +  
 42 +	  done<user1   
 43 +	done<userx  
 44 +	  
 45 + ;;  
 46 +	'b') echo " xampp"  
 47 +	 #wget https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/5.6.30/xampp-linux-x64-5.6.30-1-installer.run?from_af=true  
 48 +	 #echo " insatllation "  
 49 +	 #./xampp-linux-x64-5.6.30-1-installer.run  
 50 +	#echo "demarage des service  entrez votre password"  
 51 +	 sudo su  
 52 +	#arret du service apache   
 53 +	service apache2 stop  
 54 +	#arret du service ftp  
 55 +	service proftpd stop  
 56 +	#demarage de xampp  
 57 +	/opt/lampp/lampp start  
 58 +  
 59 +  
 60 +;;  
 61 +	'c') echo "le choix est c";;  
 62 +	'd') echo "les informations sur l'utilisation du disque :"  
 63 +		df -h  
 64 +		echo "les informations sur l'utilisation de la memoire et de la swap :"  
 65 +		free  
 66 +;;  
 67 +	* )  exit 1 ;;  
 68 +esac  
 69 +  
 70 +  
