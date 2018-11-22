function getProperties{
    
    param ( 
        [Parameter(mandatory=$false)] 
        [bool]$ShowGrid
    ) 
     $proc = Get-Process | Where-Object {$_.MainWindowTitle} | Select-Object Id,ProcessName, Path

    if($ShowGrid -eq $false){
       $proc | Format-Table
    }else{
       $proc | Out-GridView 
    }
    return $proc
}

$a = getProperties
