function getDatum{
    $date=@{}

    $day = (Get-Date).Day
    $year = (Get-Date).Year
    $month = (Get-Date).Month


    $date.add("d", $day )
    $date.add("m", $month )
    $date.add("y", $year )

    return $date
}



$a = getDatum
echo $a