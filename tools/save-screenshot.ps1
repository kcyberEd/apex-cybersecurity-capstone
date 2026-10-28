[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$Name
)

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$destDir = Join-Path $repoRoot 'screenshots'
$destPath = Join-Path $destDir "$Name.png"

$sourceDirs = @(
    'C:\Users\X1\Pictures\Screenshots',
    'C:\Users\X1\OneDrive\Pictures\Screenshots'
)

$existingDirs = @($sourceDirs | Where-Object { Test-Path -LiteralPath $_ -PathType Container })

if ($existingDirs.Count -eq 0) {
    Write-Error "No screenshot folder found. Looked in: $($sourceDirs -join ', ')"
    exit 1
}

$pngFiles = @(
    foreach ($dir in $existingDirs) {
        Get-ChildItem -LiteralPath $dir -File -Filter '*.png' -ErrorAction SilentlyContinue
    }
)

if ($pngFiles.Count -eq 0) {
    Write-Error "No .png files found in: $($existingDirs -join ', ')"
    exit 1
}

$latest = $pngFiles | Sort-Object LastWriteTime -Descending | Select-Object -First 1

if (Test-Path -LiteralPath $destPath) {
    Write-Warning "Destination already exists: $destPath"
    Write-Warning "Skipping copy to avoid overwriting an existing screenshot."
    exit 1
}

if (-not (Test-Path -LiteralPath $destDir -PathType Container)) {
    New-Item -ItemType Directory -Path $destDir -Force | Out-Null
}

Copy-Item -LiteralPath $latest.FullName -Destination $destPath

Write-Host "Source:      $($latest.FullName)"
Write-Host "Modified:    $($latest.LastWriteTime)"
Write-Host "Destination: $destPath"
