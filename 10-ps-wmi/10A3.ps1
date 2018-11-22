function getFreeRam(){
    return (Get-WmiObject Win32_OperatingSystem).FreeVirtualMemory
}

getFreeRam