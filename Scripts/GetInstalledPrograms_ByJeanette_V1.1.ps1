set-executionpolicy remotesigned

get-wmiobject Win32_computersystem | Format-List * > C:\PowerShell\HardwareSystem-PS.txt

Get-WmiObject Win32_OperatingSystem | Format-List * > C:\PowerShell\OperatingSystem-PS.txt

Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate, InstallLocation, InstallSource | Format-Table –AutoSize > C:\PowerShell\BitOption-All-ItemProperty-Wow6432Node-InstalledPrograms-PS.txt

Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate, InstallLocation, InstallSource | Format-Table –AutoSize > C:\PowerShell\BitOption-All-ItemProperty-x64-InstalledPrograms-PS.txt

Get-AppxPackage –AllUsers | Select-Object Name, Version, Publisher, InstallDate, InstallLocation, PackageUserInformation | Format-Table –AutoSize > C:\PowerShell\AllUsers-AppxPackage-InstalledPrograms-PS.txt

# Not going to sort
#gc C:\PowerShell\BitOption-All-ItemProperty-Wow6432Node-InstalledPrograms-PS.txt | sort | get-unique > C:\PowerShell\BitOption-All-ItemProperty-Wow6432Node-Sorted-InstalledPrograms-PS.txt
#gc C:\PowerShell\BitOption-All-ItemProperty-x64-InstalledPrograms-PS.txt | sort | get-unique > C:\PowerShell\BitOption-All-ItemProperty-x64-Sorted-InstalledPrograms-PS.txt
#gc C:\PowerShell\AllUsers-AppxPackage-InstalledPrograms-PS.txt | sort | get-unique > C:\PowerShell\AllUsers-AppxPackage-Sorted-InstalledPrograms-PS.txt

# Not going to combine files
#New-Item -ItemType file "C:\PowerShell\ALL-InstalledPrograms-PS.txt" –force
#Get-Content C:\PowerShell\BitOption-*.txt | Add-Content C:\PowerShell\ALL-InstalledPrograms-PS.txt
#gc C:\PowerShell\ALL-InstalledPrograms-PS.txt | sort | get-unique > C:\PowerShell\ALL-Unique-InstalledPrograms-PS.txt