$csvFile = "P:\2. Lehrjahr\M122\Skripts\schueler.csv"

$klassenListe = @{}
$schuelerListe = Import-Csv -Path $csvFile -Delimiter ";"

$schuelerListe | ForEach-Object {
    if ( -not ($_.klasse.equals("")) ) {
        if ( -not ($klassenListe.ContainsKey($_.klasse)) ) {
            $klassenListe[$_.klasse] = @()
        }
        $klassenListe[$_.klasse] += $_
    }

    if ( -not ($_.klasse2.equals("")) ) {
        if ( -not ($klassenListe.ContainsKey($_.klasse2)) ) {
            $klassenListe[$_.klasse2] = @()
        }
        $klassenListe[$_.klasse2] += $_
    }
}

foreach ($element in $klassenListe.GetEnumerator()) {
    Write-Host "$($element.key)"
    for ($i=0; $i -lt $element.value.length; $i++) {
        $filename = $($element.Key).Split(' ')[0]+".csv"
        $element.value[$i].name+";"+$element.value[$i].vorname+";"+$element.value[$i].benutzername+";"+$element.value[$i].benutzername | Out-File -filepath C:\tmp\schuelerCSV\$filename -Encoding utf8 -Append
    }
}