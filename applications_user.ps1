# Run as administrator
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Apple Music
winget install --accept-package-agreements -e --id 9PFHDD62MXS1

# Apple Devices
winget install --accept-package-agreements -e --id 9NP83LWLPZ9K

# iCloud
winget install --accept-package-agreements -e --id 9PKTQ5699M62

# HEIF
# winget install --accept-package-agreements -e --id 9PMMSR1CGPWG

# PowerToys
# winget install --accept-package-agreements -e --id XP89DCGQ3K6VLD
