function getUsers{
    return (get-wmiObject Win32_UserAccount).name
}

$result = getUsers
Write-host $result