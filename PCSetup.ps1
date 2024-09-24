# [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-PackageProvider -Name NuGet
Set-PSRepository PSGallery -InstallationPolicy Trusted

Install-module Az -Scope AllUsers -Confirm:$false
Install-module MSGraph -Scope AllUsers -Confirm:$false
Install-module MSOnline -Scope AllUsers -Confirm:$false
Install-module Bicep -Scope AllUsers -Confirm:$false
Install-module ExchangeOnlineManagement -Scope AllUsers -Confirm:$false
Install-Module MicrosoftTeams -Scope AllUsers -confirm:$false
Install-Module AzureAD -Scope AllUsers -confirm:$false
Install-Module WindowsAutoPilotIntune -Scope AllUsers -confirm:$false

#Install Chocolatey
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

winget install Microsoft.Powershell
winget install git.git
winget install github.cli
winget install Microsoft.VisualStudioCode
winget install Notepad++.Notepad++
winget install Microsoft.Teams
winget install Microsoft.Bicep
winget install Python.Python.3.11
winget install Google.Chrome
winget install Mozilla.Firefox
winget install Microsoft.PowerToys
winget install Bitwarden.Bitwarden
winget install Spotify.Spotify # run from  user context not admin
wsl.exe --install
# winget install Canonical.Ubuntu.2204
winget install Mobatek.mobaxterm
winget install DisplayLink.GraphicsDriver
winget install 7zip.7zip
winget install Foxit.FoxitReader
winget install Fortinet.FortiClientVPN
winget install Greenshot.Greenshot
winget install OBSProject.OBSStudio
winget install Microsoft.Azure.StorageExplorer
winget install Microsoft.Azure.FunctionsCoreTools
winget install Microsoft.AzureCLI
winget install appmakes.Typora
winget install Postman.Postman
winget install Notion.Notion
winget install Nvidia.Broadcast


# Install AVD Client
write-host 'Customization: Install the latest AVD Client'
$appName = 'AVDClient'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $appName 
set-Location $LocalPath 
$URL = 'https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWOzKx'
$msi = 'avdclient.msi'
$outputPath = $LocalPath + '\' + $msi
Invoke-WebRequest -uri $URL -OutFile $outputPath
Start-Process -FilePath msiexec.exe -Args "/package $outputPath /quiet" -Wait



# Install Azure CLI
# $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
