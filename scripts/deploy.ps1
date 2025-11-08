$ErrorActionPreference = "Stop"

# --- CONFIGURATION ---
$WorldDatapackDir = "F:\Servers\MCMMO-DevServer\world\datapacks"
$ServerProperties = "F:\Servers\MCMMO-DevServer\server.properties"
$DatapackZipName = "mcmmo.zip"
$DatapackURL = "https://github.com/FFGFlash/MCMMO/releases/latest/download/datapack.zip"
$ResourcePackURL = "https://github.com/FFGFlash/MCMMO/releases/latest/download/resourcepack.zip"
$TmpDir = "$env:TEMP\mc_deploy"
$ResourcePackURLForClients = "https://github.com/FFGFlash/MCMMO/releases/latest/download/resourcepack.zip"
# ---------------------

New-Item -ItemType Directory -Force -Path $TmpDir | Out-Null

# --- Download datapack ---
Write-Host "Downloading datapack from $DatapackURL"
$DatapackTmp = Join-Path $TmpDir "datapack.zip"
Invoke-WebRequest -Uri $DatapackURL -OutFile $DatapackTmp -UseBasicParsing

if (-Not (Test-Path $DatapackTmp)) {
  throw "Failed to download datapack."
}

$DestDatapack = Join-Path $WorldDatapackDir $DatapackZipName
if (-Not (Test-Path $WorldDatapackDir)) {
  New-Item -ItemType Directory -Path $WorldDatapackDir | Out-Null
}

if (Test-Path $DestDatapack) {
  $timestamp = (Get-Date).ToString("yyyyMMdd_HHmmss")
  Copy-Item $DestDatapack "$DestDatapack.$timestamp.bak"
  Remove-Item $DestDatapack -Force
}

Get-ChildItem $WorldDatapackDir -Filter "*.bak" | Sort-Object LastWriteTime -Descending | Select-Object -Skip 3 | Remove-Item

Move-Item $DatapackTmp $DestDatapack -Force

$ExtractPath = Join-Path $WorldDatapackDir "mcmmo"
$DataPath = Join-Path $ExtractPath "data"
$PackMeta = Join-Path $ExtractPath "pack.mcmeta"
if (Test-Path $DataPath) {
  Remove-Item $DataPath -Recurse -Force
  Remove-Item $PackMeta -Force
}
Expand-Archive -Path $DestDatapack -DestinationPath $ExtractPath -Force

Write-Host "Datapack installed: $DestDatapack"

# --- Download resourcepack ---
Write-Host "Downloading resourcepack from $ResourcePackURL"
$ResourceTmp = Join-Path $TmpDir "resourcepack.zip"
Invoke-WebRequest -Uri $ResourcePackURL -OutFile $ResourceTmp -UseBasicParsing

if (-Not (Test-Path $ResourceTmp)) {
  throw "Failed to download resourcepack."
}

# Compute SHA1
$sha1 = (Get-FileHash -Algorithm SHA1 $ResourceTmp).Hash.ToLower()
Write-Host "Computed resourcepack SHA1: $sha1"

# Update server.properties
if (-Not (Test-Path $ServerProperties)) {
  throw "server.properties not found at $ServerProperties"
}

$props = Get-Content $ServerProperties

# Replace or add properties
if ($props -match "^resource-pack=") {
  $props = $props -replace "^resource-pack=.*", "resource-pack=$ResourcePackURLForClients"
}
else {
  $props += "resource-pack=$ResourcePackURLForClients"
}

if ($props -match "^resource-pack-sha1=") {
  $props = $props -replace "^resource-pack-sha1=.*", "resource-pack-sha1=$sha1"
}
else {
  $props += "resource-pack-sha1=$sha1"
}

Set-Content -Path $ServerProperties -Value $props -Encoding UTF8
Write-Host "Updated server.properties with new resource pack URL + SHA1."

Write-Host "✅ Deployment complete."