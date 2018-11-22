function getHashTableDate()
{
    $date =@{}
    $d = (Get-Date).Day
    $m = (Get-Date).Month
    $y = (Get-Date).year
    $date.Add("d", $d)
    $date.Add("m", $m)
    $date.Add("y", $y)
    return $date
}

echo $(getHashTableDate)