# claude-config (template)

Squelette de config Claude Code, dépersonnalisé. Point de départ réutilisable :
instructions comportementales, style d'écriture, wiring des hooks/plugins, format
de memory et de slash commands. À toi de remplir les placeholders `<...>`.

## Contenu

| Fichier | Rôle |
|---|---|
| `CLAUDE.md` | Instructions globales (SOUL, stance, règles, délégation, Karpathy). Sections Infrastructure/Projets à remplir. Charge `RTK.md` + `PUBLIC_WRITING.md` via `@`. |
| `RTK.md` | Règles Rust Token Killer + façon de bosser. |
| `PUBLIC_WRITING.md` | Style pour tout texte destiné à autrui (mails, PR, commits). |
| `settings.json` | Modèle, hooks, statusline, plugins, marketplaces. Remplace `<USERNAME>` et vérifie le chemin de `node`. |
| `keybindings.json` | Raccourcis custom. |
| `statusline.ps1` | Statusline PowerShell `[HH:mm] dir \| model`. |
| `commands/example.md` | Exemple de slash command (duplique + adapte). |
| `hooks/` | `context-mode-cache-heal.mjs` (SessionStart) + `post-compact.txt` (rappel post-compact, à personnaliser). |
| `memory/` | Format d'auto-memory + 3 feedbacks génériques d'exemple. Le reste est perso, à créer toi-même. |

## Plugins (se réinstallent via `settings.json`)

Déclarés dans `enabledPlugins` + `extraKnownMarketplaces`, Claude Code les réinstalle au lancement :
- `ponytail` → `DietrichGebert/ponytail`
- `andrej-karpathy-skills` → `forrestchang/andrej-karpathy-skills`
- `context-mode` → `mksglu/context-mode`

## rtk (optionnel)

Le hook `PreToolUse:Bash` appelle `rtk hook claude` (Rust Token Killer, binaire externe).
Si tu ne l'as pas : installe-le dans `~/.local/bin/`, ou retire ce hook de `settings.json`.

## Installation

```powershell
git clone <ce-repo>
cd claude-config
# edite settings.json (<USERNAME>, chemin node) et restore.ps1 (<PROJECT>)
./restore.ps1
```

Puis remplis : sections Infrastructure/Projets de `CLAUDE.md`, `hooks/post-compact.txt`, et ta memory.

## Placeholders à remplacer

`<USERNAME>` (chemins Windows), `<PROJECT>` (dossier memory), `<HOST>`/`<HOST_IP>`/`<SSH_KEY>` (infra),
`<PC_IP>`/`<NANO_IP>`/`<CLAW_IP>`, `<BOT_1>`/`<BOT_2>`, `<GH_USER>`, `<EMAIL>`, `<TELEGRAM_*>`.
