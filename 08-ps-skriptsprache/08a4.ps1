$proc = Get-Process

foreach($pr in $proc)
{
    if($pr.cpu -gt 1000)
    {
        write-host -ForegroundColor Green $pr.Id, $pr.Name
    }elseif($pr.cpu -ge 300){
        write-host -ForegroundColor White $pr.Id, $pr.Name
    }else{
        write-host -ForegroundColor red $pr.Id, $pr.Name
    }
}
