#!/bin/bash

while true; do
    read -p "Entrez le nom du fichier/dossier à ajouter : " file
    git add $file
    read -p "Souhaitez-vous ajouter un autre fichier/dossier ? (o/n) : " another
    if [[ $another != "o" ]]; then
        echo "Fin d'ajout du fichier/dossier."
        break
    fi
done

read -p "Entrez votre message : " sms
git commit -m $sms

echo "Push en cours..."

# Lancement du push dans un sous-processus
git push &

# Animation de chargement pendant le push
pid=$!
while kill -0 $pid 2>/dev/null; do
    for i in {1..3}; do
        echo -n "."
        sleep 1
    done
    echo -ne "\r   \r"  # Efface la ligne précédente
done

echo "Push OK"