# Installe cette config Claude dans ~/.claude. Lancer depuis le repo cloné.
# Avant : remplace <USERNAME> dans settings.json et <PROJECT> ci-dessous par tes valeurs.
$ErrorActionPreference = "Stop"
$src = $PSScriptRoot
$dst = Join-Path $env:USERPROFILE ".claude"

# Dossier projet où vit la memory (adapte a ton arbo, ex: C--Users-<toi>-Downloads)
$projectDir = "<PROJECT>"
$proj = Join-Path $dst "projects\$projectDir"

New-Item -ItemType Directory -Force -Path $dst, $proj | Out-Null

foreach ($f in @("CLAUDE.md","RTK.md","PUBLIC_WRITING.md","settings.json","keybindings.json","statusline.ps1")) {
    Copy-Item (Join-Path $src $f) (Join-Path $dst $f) -Force
}
Copy-Item (Join-Path $src "commands") $dst -Recurse -Force
Copy-Item (Join-Path $src "hooks")    $dst -Recurse -Force
Copy-Item (Join-Path $src "memory")   $proj -Recurse -Force

Write-Host "Config installee dans $dst"
Write-Host "TODO: edite settings.json (<USERNAME>, chemin node), remplis CLAUDE.md (infra/projets) et la memory."
