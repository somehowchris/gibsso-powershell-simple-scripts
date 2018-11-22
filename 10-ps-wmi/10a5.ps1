function getShares{
    return get-WmiObject -class Win32_Share
}

$result = getShares
Write-host $result