---
layout: page
title: Google Drive not Syncing
parent: Troubleshooting Guides
---

# Google Drive not Syncing

## Restart Google Drive

If Google Drive is in the tray, right click it, click the "settings" gear, *scroll down*, and click Quit.

Then open the start menu, search for Google Drive, and reopen it.

![Quit Google Drive](../assets/quit-google-drive.png)

## Forcibly Restart Google Drive

If Google Drive didn't actually quit when you clicked Quit, open a new PowerShell window and paste in the following script:

```powershell
$ProcessActive = Get-Process googledrivefs -ErrorAction SilentlyContinue
if($ProcessActive -like "*")
{
    Stop-Process -Force -Name "GoogleDriveFS*"
    Write-host "Killing all processes for Google Drive File Stream"
}

$version = Get-Childitem -Path "$env:ProgramFiles\Google\Drive File Stream\" -Filter 'GoogleDriveFS.exe' -Recurse | Select -ExpandProperty Directory -Last 1
$script =  "$version\GoogleDriveFS.exe"

Start-Process $script
```

_Script last tested 18 Mar 2024_
