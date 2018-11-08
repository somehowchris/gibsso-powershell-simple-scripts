param(
    [Parameter(Mandatory=$true)][String] $Path
)
$csv = Import-Csv -Path $Path -Header "KT", "ORTNAME", "PLZ" -Delimiter ";" | Select-Object -Skip 1

$orte = @{}

foreach($line in $csv)
{
    if(!($orte.ContainsKey($line.ORTNAME)))
    {
        $orte.Add($line.ORTNAME,$line.PLZ)
    }
    else
    {
        $orte.Add("$($line.ORTNAME) ($($line.KT))",$line.PLZ)
    }
}

write-host "Geben sie eine Ortschaft ein oder exit um die Applikation zu schliessen"
while(($input=(Read-Host)) -ne "exit")
{
    if($orte.ContainsKey($input))
    {
        write-host $orte[$input]
    }
}