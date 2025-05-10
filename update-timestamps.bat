@echo off
PowerShell -Command "Get-ChildItem -Path 'C:\filename*' | ForEach-Object {
    $_.LastWriteTime = Get-Date
    $_.CreationTime = Get-Date
    $_.LastAccessTime = Get-Date
}"
