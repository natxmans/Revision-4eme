#!/bin/bash
# Script d'auto-enregistrement - Sauvegarde automatique des changements
# Utilisation: ./auto-commit.sh
# Le script commit et push vos changements toutes les 10 secondes

echo "🚀 Démarrage de l'auto-enregistrement..."
echo "Les changements seront enregistrés toutes les 10 secondes"
echo "Appuyez sur Ctrl+C pour arrêter"

while true; do
    # Attendre 10 secondes
    sleep 10
    
    # Se assurer qu'on est dans le bon répertoire
    if [ ! -d ".git" ]; then
        echo "❌ Erreur: Ce n'est pas un repository Git"
        exit 1
    fi
    
    # Ajouter tous les changements
    git add -A
    
    # Vérifier s'il y a des changements
    if git diff --cached --quiet; then
        echo "⏸️  $(date '+%Y-%m-%d %H:%M:%S') - Aucun changement détecté"
    else
        # Créer un commit avec timestamp
        TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
        git commit -m "Auto-save: $TIMESTAMP"
        
        # Push vers GitHub
        if git push; then
            echo "✅ $(date '+%Y-%m-%d %H:%M:%S') - Changements enregistrés et synchronisés"
        else
            echo "⚠️  $(date '+%Y-%m-%d %H:%M:%S') - Erreur lors du push (vérifiez votre connexion)"
        fi
    fi
done
