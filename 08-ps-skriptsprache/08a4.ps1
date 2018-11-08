
$proc = Get-Process
$green = 0
$white = 0
$red = 0
foreach($pr in $proc)
{
    if($pr.cpu -gt 1000)
    {
        write-host -ForegroundColor Red $pr.Id, $pr.Name
        $red++
    }elseif($pr.cpu -ge 300){
        write-host -ForegroundColor White $pr.Id, $pr.Name
        $white++
    }else{
        write-host -ForegroundColor Green $pr.Id, $pr.Name
        $green++
    }
}

Write-host ""
Write-host -ForegroundColor Magenta "Stats:"
write-host -ForegroundColor Green $green
write-host -ForegroundColor White $white
write-host -ForegroundColor Red $red
