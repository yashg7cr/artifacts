$NewDIR = "C:\SoftwaresDump\QTP12.5"
$SoftwareWebLink = "https://download.microsoft.com/download/a/e/1/ae184ba4-5926-4be6-a036-17b318960453/tfsserver2017.1.exe"
$SoftwarePath = "C:\SoftwaresDump\QTP12.5\tfsserver2017.1.exe"
start-sleep -seconds "10"

# Create temp directory
New-Item "C:\SoftwaresDump\QTP12.5" -ItemType Directory -ErrorAction SilentlyContinue
# Download
(New-Object System.Net.WebClient).DownloadFile("http://artifacts.g7crm4l.org/softwares/QTP12.5/tfssetup.exe", "C:\SoftwaresDump\QTP12.5\tfssetup.exe")
Start-Process "C:\SoftwaresDump\QTP12.5\tfsserver2017.1.exe" 
start-sleep -seconds "30"
Start-Process "C:\SoftwaresDump\QTP12.5\tfssetup.exe"
