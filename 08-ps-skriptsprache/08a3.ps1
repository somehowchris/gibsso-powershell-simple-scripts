Get-ChildItem -Path "C:\windows" -Recurse -Filter "*.exe" | Select-Object Name, {$_.VersionInfo.ProductVersion}, Length | Format-table