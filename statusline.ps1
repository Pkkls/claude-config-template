$model = if ($env:CLAUDE_MODEL) { $env:CLAUDE_MODEL } else { "sonnet" }
$time = Get-Date -Format "HH:mm"
$dir = Split-Path -Leaf (Get-Location)
Write-Output "[$time] $dir | $model"
