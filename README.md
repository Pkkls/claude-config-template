# claude-config (template)

Un point de départ pour configurer **Claude Code**, la version en ligne de commande de Claude.
Ce dépôt ne contient aucune donnée personnelle, juste la structure et des exemples à remplir.

Tu pars de zéro ? Ce README t'explique quoi c'est, à quoi ça sert, et comment t'en servir.

---

## C'est quoi Claude Code ?

Claude Code est un assistant IA qui tourne dans ton terminal et peut lire/écrire des fichiers,
lancer des commandes, etc. Il lit sa configuration dans un dossier caché `.claude` situé dans
ton dossier utilisateur (`~/.claude` sur Mac/Linux, `C:\Users\TonNom\.claude` sur Windows).

Ce dépôt est une **copie propre de ce dossier de config**, prête à réutiliser sur une autre
machine ou à partager.

---

## À quoi sert chaque fichier ?

| Fichier | Ce que ça fait |
|---|---|
| `CLAUDE.md` | Le fichier le plus important. Ce sont tes **instructions permanentes** : comment Claude doit se comporter, ton style, tes règles. Claude le lit au début de chaque session. |
| `RTK.md` | Instructions supplémentaires chargées automatiquement par `CLAUDE.md` (via la ligne `@RTK.md`). Ici : préférences de travail. |
| `PUBLIC_WRITING.md` | Règles de style quand Claude écrit un texte pour quelqu'un d'autre (mail, message, description de commit). |
| `settings.json` | Les **réglages** : quel modèle utiliser, quels plugins activer, les hooks, la barre de statut. Format JSON. |
| `keybindings.json` | Tes raccourcis clavier persos. |
| `statusline.ps1` | Petit script qui affiche l'heure + le dossier + le modèle en bas de l'écran (Windows/PowerShell). |
| `commands/example.md` | Un **slash command** : un raccourci que tu tapes (ex `/example`) pour lancer une action prédéfinie. Duplique le fichier pour en créer d'autres. |
| `hooks/` | Des scripts que Claude lance automatiquement à certains moments (au démarrage, après un résumé de conversation). |
| `memory/` | La **mémoire** de Claude : des petites notes qu'il retient entre les sessions (tes préférences, tes projets). Ici on garde juste le format + 3 exemples. |

---

## Les plugins

Trois plugins sont activés dans `settings.json`. Tu n'as **rien à télécharger à la main** :
Claude Code les réinstalle tout seul au premier lancement.

- **ponytail** ([DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail)) : pousse Claude à écrire le code le plus simple possible, pas d'usine à gaz.
- **andrej-karpathy-skills** ([forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills)) : bonnes pratiques de code pour éviter les erreurs classiques.
- **context-mode** ([mksglu/context-mode](https://github.com/mksglu/context-mode)) : économise des tokens (donc de l'argent) sur les grosses sorties.

---

## Comment l'utiliser (pas à pas)

### 1. Installer Claude Code
Suis la doc officielle : https://docs.claude.com/claude-code . Une fois installé, la commande
`claude` doit marcher dans ton terminal.

### 2. Récupérer ce dépôt
```bash
git clone https://github.com/<GH_USER>/claude-config-template.git
cd claude-config-template
```

### 3. Remplacer les placeholders
Le dépôt est volontairement vide de données perso. Cherche les morceaux entre chevrons `<...>`
et remplace-les par les tiens :

- `<USERNAME>` dans `settings.json` : ton nom d'utilisateur Windows (ex `C:/Users/marie`).
- Vérifie aussi le chemin de `node` dans `settings.json` (par défaut `C:/Program Files/nodejs/node.exe`).
- `<PROJECT>` dans `restore.ps1` : le nom du dossier où vit ta mémoire (laisse tel quel si tu débutes).
- Dans `CLAUDE.md`, remplis les sections **Infrastructure** et **Projets** avec les tiennes (ou supprime-les).

### 4. Installer la config
**Windows (PowerShell) :**
```powershell
./restore.ps1
```
Ça copie tout dans `C:\Users\TonNom\.claude`.

**Mac/Linux :** copie les fichiers à la main dans `~/.claude/` en gardant la même structure
(`CLAUDE.md`, `settings.json`, le dossier `commands/`, `hooks/`, etc.).

### 5. Lancer Claude
```bash
claude
```
Il lit ta config, réinstalle les plugins, et c'est parti.

---

## rtk (optionnel, pour aller plus loin)

`settings.json` contient un hook qui appelle un outil externe nommé `rtk` (Rust Token Killer,
compresse les commandes pour économiser des tokens). Ce n'est **pas** un plugin Claude et il n'a
pas de dépôt public : c'est un binaire séparé. Tu ne l'as pas ? Deux choix : le placer dans
`~/.local/bin/`, ou simplement **supprimer le bloc `PreToolUse` dans `settings.json`**. Sans lui,
tout le reste marche.

---

## Rappel important

Ce dépôt public ne doit **jamais** contenir de secrets : clés API, tokens de bot, mots de passe,
IPs privées. Garde ça dans un dépôt **privé** séparé. Les placeholders `<...>` sont là pour ça.
