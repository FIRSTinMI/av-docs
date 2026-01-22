---
layout: page
has_children: true
title: New Machine Setup
---

{% include staff-only.md %}

# New AV Cart Setup
This section will include all of the documentation and guides for setting up a new AV Cart.  This includes setting up the network, installing software, and configuring the cart.

{: .note }
Most of the drivers for the AV Cart are installed automatically.  These take time and require an internet connection. If you are installing windows, you may access the internet through the auxillary NIC (PCIe NIC Card) on the back of the cart.  If these drivers don't install automatically, open windows update and check for updates.  Graphics drivers,
chipset drivers, and other drivers will be installed automatically.  Please be patient!

## Required Software
The following software is required to be installed on the AV Cart.  If you are setting up a new cart, you will need to install this software.  If you are updating an existing cart, you may need to update some of this software.  The majority of this software can be installed from the G drive.  If you are unable to access the G drive, you can download the software from the links provided.

1. Use [Ninite](https://ninite.com/) to install the base software.
   - Google Chrome
   - Notepad++
   - 7-Zip
   - VLC
   - WinSCP
   - PuTTY
   - Google Drive for Desktop
   - TeamViewer
   - RealVNC Viewer
2. Sign into chrome using your cart's Google Account (`fimvideo<#>@firstinmichigan.org`, where `<#>` is the cart number)
    - When launching chrome, ensure you set chrome as the default browser
3. Sign into Google Drive Desktop using your cart's Google Account
4. The following software will need to be downloaded individually and installed. These links may be old.  Worst case, access the "Cart Setup" folder on the G drive for installers
    - [VMix](https://www.vmix.com/software/download.aspx)
    - [Advanced IP Scanner](https://www.advanced-ip-scanner.com/download/)
    - [BEHRINGER X18 Drivers (Mixers -> Digital Stagebox Mixers -> All -> X18 -> Software -> Drivers)](https://www.behringer.com/downloads.html)
    - [Realtek Ethernet Diagnostic Utility](https://www.techspot.com/drivers/driver/file/information/18001/)
    - [Blackmagic Converters](https://www.blackmagicdesign.com/support/family/broadcast-and-atem-converters)
    - [NDI Tools](https://www.newtek.com/ndi/tools/)
    - [PTZOptics Control App](https://ptzoptics.com/ptz-app/)
    - [Slack](https://slack.com/downloads/windows)]
    - [Stream Deck](https://www.elgato.com/en/downloads)
    - [XAir Edit (Mixers -> Digital Stagebox Mixers -> All -> X18 -> Software -> Windows)](https://www.behringer.com/downloads.html)
    - Office 2016 (Installer is on the G drive)

5. Sign into Slack.  You should be able to sign into 2 workspaces, `first-in-michigan` and `frc-support`

6. To comply with standards, the AV Cart's name should be changed to "FiMVideo<#>" where `<#>` is the cart number that it is

    {: .note }
    To rename the computer, follow these steps: <br/>
        1. Right click on the start menu and select "System" <br/>
        2. Click on "Rename this PC" <br/>
        3. Enter the new name and click "OK" <br/>
        4. Restart the computer <br/>

7. [Setup the Network](./realtek-network-vlans)
8. [Install Capture Card Drivers](./capture-card-drivers)
9. Launch TeamViewer and DM a member of the AV Team (Bruce, Soren, or Evan) with your TeamViewer info to have the computer added to the FiM TeamViewer support
    - A team member will complete the following things
        - Create/Sign into a Teamviewer Account for the cart
        - Add the cart to the FiM TeamViewer account
        - Register a static password for the cart within the advanced settings

10. TODO: More Documentation about Storage Spaces and the disk cloning setup