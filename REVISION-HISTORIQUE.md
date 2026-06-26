# 📋 Historique des Révisions - Revision-4ème

Ce document vous aide à suivre vos progrès et modifications.

## 🔄 Comment l'enregistrement automatique fonctionne ?

Il y a **2 systèmes** qui enregistrent vos changements :

### 1️⃣ **GitHub Actions (Automatique sur le serveur)**
- ✅ Enregistre tous les 10 minutes automatiquement
- ✅ Fonctionne même si vous n'êtes pas connecté
- ✅ Visible dans l'onglet **Actions** du repository
- 📍 Emplacement: `.github/workflows/auto-save.yml`

### 2️⃣ **Script local (Sur votre ordinateur) - TOUS LES 10 SECONDES! ⚡**
- Pour démarrer manuellement:
  ```bash
  chmod +x auto-commit.sh
  ./auto-commit.sh
  ```
- Enregistre **TOUS LES 10 SECONDES** ⚡
- Appuyez sur `Ctrl+C` pour arrêter

## 📊 Voir votre historique

### Sur GitHub:
1. Allez dans l'onglet **"Actions"** de votre repository
2. Ou consultez l'onglet **"Commits"** pour voir tous les changements

### En ligne de commande:
```bash
git log --oneline
git log --graph --all --decorate
```

## 🎯 Qui a modifié quoi et quand ?

Chaque commit auto-enregistré montre:
- ✅ **Date et heure** du changement (jusqu'à la seconde!)
- ✅ **Fichiers modifiés**
- ✅ **Quels changements exactement**

## 💡 Tips utiles

### Voir les changements de la dernière minute:
```bash
git log --since="1 minute ago"
```

### Revenir à une version antérieure:
```bash
git revert <commit-hash>
```

### Voir qui a modifié une ligne spécifique:
```bash
git blame nom-du-fichier.html
```

---

**Vous êtes maintenant suivi(e) EN TEMPS RÉEL! 📹** Tous vos changements sont enregistrés automatiquement toutes les 10 secondes!
