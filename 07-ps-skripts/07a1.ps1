param (
    [Parameter(Mandatory=$true)][int] $zahl,
    [Parameter(Mandatory=$true)][int] $delay
)
1..$zahl | ForEach-Object{
    Start-Sleep -Milliseconds $delay
    Write-Host $_
}