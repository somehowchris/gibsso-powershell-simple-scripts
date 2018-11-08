$proc = Get-Process
$red = 0
$green = 0
$white = 0

foreach($pr in $proc)
{
    if($pr.cpu -gt 1000)
    {
        write-host -ForegroundColor Green $pr.Id, $pr.Name
        $green++
    }elseif($pr.cpu -ge 300){
        write-host -ForegroundColor White $pr.Id, $pr.Name
        $white++
    }else{
        write-host -ForegroundColor red $pr.Id, $pr.Name
        $red++
    }
}
 write-host -ForegroundColor red "Red: $red" 
 write-host -ForegroundColor White "White: $white"
 write-host -ForegroundColor green "Green: $green"

