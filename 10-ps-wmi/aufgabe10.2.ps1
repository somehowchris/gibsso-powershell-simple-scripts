

function getDiskSpace(){
    
    $disks = Get-WmiObject -Class Win32_PhysicalMemory -EA SilentlyContinue | select SerialNumber, Capacity
    $disksSpace=@{}
    foreach($disk in $disks){
         $disksSpace.Add($disk.SerialNumber ,$disk.Capacity/1000000000)
    }
    return $disksSpace
}

$a = getDiskSpace

Write-Host $a.Values