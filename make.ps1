$include = [string[]] @()

## clear build directory
$buildPath = "./build"
if (Test-Path $buildPath -PathType Container) {
    Remove-Item -Force -Recurse $buildPath
}
New-Item -ItemType Directory -Force -Path $buildPath > $null

foreach ($name in $include) {
    Get-Content "./snippets/$name.ps1" >> .\build\profile.ps1
}
