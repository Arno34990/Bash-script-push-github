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

echo "Push OK"
git push