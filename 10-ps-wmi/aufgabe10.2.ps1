

function getRamCapacity(){
    
    return ((Get-WmiObject -Class Win32_PhysicalMemory -EA SilentlyContinue ).capacity | Measure-Object -Sum ).sum / 1gb
    }

$a = getRamCapacity

Write-Host $a