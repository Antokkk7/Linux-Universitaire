#!/bin/bash
compteur=0
input=""
while [ "$input" != "Q" ]; do
  echo "=============================="
  echo "Bienvenue sur le pseudo Shell GEOSAURE"
  echo "Liste des commandes implémentées"
  echo "0) HELP"
  echo "1) COLOR"
  echo "2) COPY"
  echo "3) ECHO"
  echo "4) TIME"
  echo "5) DATE"
  echo "6) EXIT"
  echo "7) SHUTDOWN"
  echo "=============================="
  echo "Veuillez taper un numéro de commande ou appuyer sur Q pour quitter"
# --------------------------------------------------------- 
  echo "$compteur. Commande: $input" >> ~/TP_TheLast/history.txt

  read input

# ---------------------------------------------------------
  compteur=$((compteur + 1))
# ---------------------------------------------------------
  case "$input" in
  # ---------------------------------------------------------
  0)
      echo "=============================="
      echo "COLOR               Modifie les couleurs du premier plan et de l arrière-plan de la console."
      echo "COPY                Copie un ou plusieurs fichiers."
      echo "ECHO                Affiche des messages ou active/désactive l affichage des commandes."
      echo "EXIT                Quitte l interpréteur de commandes."
      echo "SHUTDOWN            Permet un arrêt local ou distant correct de l ordinateur."
      echo "TIME                Affiche ou définit l heure du système."
      echo "=============================="
      ;;
    1)
      echo "La couleur sera peut être changée un jour..."
      ;;
# ---------------------------------------------------------
    2)
      echo "La copie semble être faite..."
      ;;
# ---------------------------------------------------------
    3)
      echo "ECHO! ECHo! ECho.. Ech.. oech.. .ch... o.. o...."
      ;;
# ---------------------------------------------------------
    4)
      date +"%H:%M"
      ;;
# ---------------------------------------------------------
    5)
      date
      ;;
# ---------------------------------------------------------
    6)
      echo "Merci d appuyer sur la touche Q pour quitter."
      ;;
# ---------------------------------------------------------
    7)
      echo "Mais l ordinateur refusa !"
      ;;
# ---------------------------------------------------------
    Q|q)
      echo "Fermeture du programme."
      ;;
# ---------------------------------------------------------
    *)
      echo "Erreur. Veuillez tappez un numéro de commande où apuyer sur Q"
      ;;
# --------------------------------------------------------- 
  esac
done

exit 0
