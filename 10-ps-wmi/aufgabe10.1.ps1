

function getDiskSpace(){
    
    $disks = Get-WmiObject -Class Win32_LogicalDisk -EA SilentlyContinue | select FreeSpace, DeviceId
    $disksSpace=@{}
    foreach($disk in $disks){
         $disksSpace.Add($disk.DeviceId ,$disk.FreeSpace/1GB)
    }
    return $disksSpace
}

$a = getDiskSpace

Write-Host $a.Values