# PCinventories
Scripts to gather system specifications off of PCs for a hardware and software inventory

## Gathering PC Inventories
    1. From the PC on which to inventory, log into your PPM Google Account and access the IT Team Drive.
    2. Go to the SoftwareInventories\Scripts subfolder.
    3. Download the lastest script to a C:\PowerShell directory
    4. Find the PowerShell application in search and Run As Administrator
    5. Open script that was downloaded
    6. Run the script
    7. Upload all the TXT files that were generated to the SoftwareInventories dated directory for the batch collection effort.

## HOWTO References
### For Windows 8 and higher

Instructions Reference: https://www.wintips.org/view-installed-apps-and-packages-in-windows-10-8-1-8-from-powershell/

    1. Use Cortana search: Powershell
    2. Run Powershell as Administrator (right click on Powershell name for menu)
    3. Within the PowerShell environment Change to the root directory of the C: drive
        ◦ > cd \
    4. Within Powershell 3.0 run following for short list:  
        ◦ Get-AppxPackage -AllUsers | Select Name, PackageFullName
    5. Within Powershell 3.0 run following for detail list:  
        ◦ Get-AppxPackage –AllUsers
    6. Within Powershell run following for a summary listing:  
        ◦ Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize > C:\InstalledPrograms-PS.txt
    7. Using x64 Key in PowerShell for summary listing:
        ◦ Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize >> C:\InstalledPrograms-PS.txt


## For Windows 7 and below
Instructions Reference:  https://helpdeskgeek.com/how-to/generate-a-list-of-installed-programs-in-windows/

    1. Use search on Start menu: wmic
        ◦ wmic is the Windows Management Instrumentation Command-line tool
    2. Run wmic as Administrator (right click on wmic name for menu)
    3. Within wmic run following for list:  
        ◦ /output:C:\InstallList.txt product get name,version

### Research

    1. To run a script in PowerShell:
        ◦ [GitHub](https://ss64.com/ps/syntax-run.html)
    2. Script example across multiple PCs:
        ◦ [GitHub](https://blogs.technet.microsoft.com/heyscriptingguy/2011/11/13/use-powershell-to-quickly-find-installed-software/)
    3. Another Script option
        ◦ By Arivan: [GitHub](https://stackoverflow.com/questions/429738/detecting-installed-programs-via-registry)
    4. Upgrading PowerShell
        ◦ [GitHub](https://docs.microsoft.com/en-us/powershell/wmf/5.1/release-notes)
    5. Getting the version of PowerShell
        ◦ $PSVersionTable.PSVersion
    6. Gathering system properties in new PowerShell version AND formatting output
        ◦ [GitHub](https://redmondmag.com/articles/2015/01/23/powershell-to-retrieve-info.aspx?m=1)
        
        
