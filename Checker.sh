#!/bin/bash

if test $# -ne 1 
then
	echo "erreur sur le nb de parametres"
	exit 1    
fi


if test -f $1 -o -d $1 
then
	echo "Le fichier/dossier "$1" existe-t-il... roulement de tambours... oui, il existe déjà..."
exit 1

else
	mkdir $1
	echo "Le dossier a été créé."
exit 0
fi