#!/bin/bash
echo "debut du script trouver.sh"

if [ $# -lt 2 ]
  then 
    echo " il faut donner un mot et un fichier d'entrer "
    exit 1
  else
    mot=$1
    echo "mot a rechercher : " $mot
    shift
    for fich in $@
    do
      if [ -f $fich ]
      then 
        echo "Recherche dans $fich en cours"
        echo "..."
        echo "..."
        grep -n $mot ./$fich
        echo "Mot trouvé !"
      else
        echo "Recherche de $mot dans $fich"
        echo "..."
        echo "$fich est inexistant..."
      fi
    done
fi

echo "fin du script trouver" 
exit 0