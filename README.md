# Git Automation Script

Ce script Bash permet d'automatiser certaines tâches courantes dans un workflow Git : l'ajout de fichiers ou dossiers, le commit avec un message personnalisé et le push vers un dépôt distant. Il inclut également un indicateur de progression lors du push et vérifie si l'opération a réussi ou échoué.

## Fonctionnalités

- **Ajout de fichiers/dossiers** : Le script permet de sélectionner un ou plusieurs fichiers ou dossiers à ajouter à la zone de staging de Git.
- **Commit personnalisé** : L'utilisateur est invité à entrer un message de commit.
- **Push avec indicateur de progression** : Le script affiche une animation pendant l'exécution du push vers le dépôt distant et indique si l'opération a réussi ou échoué.
- **Autocomplétion** : Utilisation de la touche `Tab` pour l'autocomplétion des fichiers et dossiers dans le répertoire courant.

## Utilisation

1. **Lancer le script** : Exécute le script dans votre terminal :
    ```bash
    ./nom_du_script.sh
    ```

2. **Ajouter des fichiers ou dossiers** : Le script vous demandera d'entrer le nom du fichier ou dossier à ajouter. Vous pouvez utiliser la touche `Tab` pour activer l'autocomplétion des fichiers dans le répertoire courant.

3. **Continuer l'ajout** : Après avoir ajouté un fichier ou dossier, il vous demandera si vous souhaitez en ajouter un autre (`o` pour oui, `n` pour non).

4. **Entrer un message de commit** : Une fois les fichiers ajoutés, il vous demandera d'entrer un message pour le commit. Vous pouvez entrer une phrase complète avec des espaces.

5. **Push vers le dépôt distant** : Le script exécutera un `git push` et affichera un indicateur de progression. Si le push est réussi, vous verrez `Push OK`. Si une erreur survient, vous verrez `Push KO`.

## Exigences

- **Git** : Assurez-vous que Git est installé sur votre système.
- **Accès à un dépôt Git** : Ce script doit être exécuté dans un dépôt Git valide avec une branche configurée pour un dépôt distant.

## Exemple

Voici un exemple d'exécution du script :

```bash
Entrez le nom du fichier/dossier à ajouter : test.sh 
Souhaitez-vous ajouter un autre fichier/dossier ? (o/n) : n
Fin d'ajout du fichier/dossier.
Entrez votre message : Le projet est terminé 
[main 0f3b409] Le projet est terminé
 1 file changed, 3 insertions(+), 3 deletions(-)
Push en cours...
..Énumération des objets: 5, fait.
Décompte des objets: 100% (5/5), fait.
Compression par delta en utilisant jusqu'à 12 fils d'exécution
Compression des objets: 100% (3/3), fait.
Écriture des objets: 100% (3/3), 343 octets | 343.00 Kio/s, fait.
Total 3 (delta 1), réutilisés 0 (delta 0), réutilisés du pack 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Arno34990/Bash-script-push-github.git
   ?????????????  main -> main
Push OK
```