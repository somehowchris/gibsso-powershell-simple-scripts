#param (
#    [Parameter(Mandatory=$true)][String] $csvFile
#)
$csvFile = "P:\2. Lehrjahr\M122\Skripts\lernende.csv"

$csv = Import-Csv -Path $csvFile -Delimiter ";"

foreach($line in $csv) {
    $directoryName = $line.Vorname.Split(' ')[0].ToLower() + "." + $line.Name.ToLower()
    $directoryName = $directoryName.Replace('ö','oe').Replace('ä','ae').Replace('ü','ue').Replace('é','e')
    New-Item -Type Directory -Path C:\tmp\$directoryName
}