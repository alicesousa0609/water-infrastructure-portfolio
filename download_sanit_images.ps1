# SANIT image downloader – direct public image URLs found on official technology pages
# Run only for personal review unless you have permission to republish images.
$ErrorActionPreference = 'Continue'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$folder = Join-Path $root 'images'
New-Item -ItemType Directory -Force -Path $folder | Out-Null
$records = Import-Csv -Path (Join-Path $root 'sanit_images_manifest.csv') -Encoding UTF8
$ok = 0
foreach ($item in $records) {
    $destination = Join-Path $folder $item.filename
    try {
        Write-Host "Downloading $($item.filename)..."
        Invoke-WebRequest -Uri $item.image_url -OutFile $destination -UseBasicParsing -TimeoutSec 40
        if ((Get-Item $destination).Length -lt 1000) { throw 'Suspiciously small image file' }
        $ok++
    } catch {
        Write-Warning "Could not retrieve $($item.filename): $_"
        if (Test-Path $destination) { Remove-Item $destination -Force }
    }
}
Write-Host "Downloaded $ok of $($records.Count) images to $folder"
Write-Host 'Before uploading to a public GitHub repository, secure reuse permission from the image rights holder.'
Read-Host 'Press Enter to exit'
