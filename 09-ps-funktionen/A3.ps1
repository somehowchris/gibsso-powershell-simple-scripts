function getGuiProcesses($ShowGrid = $false){
    
    $proc = Get-Process | Where-Object {$_.MainWindowTitle} | Select-Object id, processname, path

    if($showgrid -eq $true)
    {
        $proc | Out-GridView
    }
    else
    {
        echo $proc | Format-Table
    }
}

getGuiProcesses($true)