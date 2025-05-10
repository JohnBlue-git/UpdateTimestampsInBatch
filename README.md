## UpdateTimestampsInBatch
To update timestamps for batch of files on Windows

## Script
You can update the timestamps for a batch of files using wildcards in PowerShell. Here's an example that updates the Last Write Time, Creation Time, and Last Access Time for all files matching a pattern:
```powershell
Get-ChildItem -Path "C:\filename*" | ForEach-Object {
    Set-ItemProperty -Path $_.FullName -Name LastWriteTime -Value (Get-Date)
    Set-ItemProperty -Path $_.FullName -Name CreationTime -Value (Get-Date)
    Set-ItemProperty -Path $_.FullName -Name LastAccessTime -Value (Get-Date)
}
```
To use script, run it as Administrator if necessary (especially if touching system or protected files).
```powershell
./update-timestamps.bat
```
By the way, .bat files are executable by default as long as:
- The file is not blocked (see note below).
- Your user has permission to run scripts and access the file location.

## Explanation
- Get-ChildItem -Path "C:\filename*":
  - Retrieves all files matching the pattern "C:\filename*".
- ForEach-Object { ... }:
  - Iterates over each file.
- Set-ItemProperty -Path $_.FullName -Name LastWriteTime -Value (Get-Date):
  - Updates the Last Write Time to the current date and time.
