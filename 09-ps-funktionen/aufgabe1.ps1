function celsiustofahrenheit($celsius){
    
    $Fahrenheit = ($celsius * 9) / 5 + 32
    
    return $Fahrenheit
}

Write-Host $(celsiustofahrenheit 21)