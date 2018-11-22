

function getDiskSpace(){
    
    $disks = Get-WmiObject -Class Win32_PhysicalMemory -EA SilentlyContinue | select FreeSpace, DeviceId
    $disksSpace=@{}
    foreach($disk in $disks){
         $disksSpace.Add($disk.DeviceId ,$disk.FreeSpace/1000000000)
    }
    return $disksSpace
}

$a = getDiskSpace

Write-Host $a.Values