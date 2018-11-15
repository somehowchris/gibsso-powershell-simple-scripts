function dateInHashtable{
    return @{d =(Get-Date).day; m=(Get-Date).month; y=(get-date).Year}
}
$date = dateInHashtable
echo $date
