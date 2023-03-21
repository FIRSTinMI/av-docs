---
layout: default
title: Setting up the FiM AV System
last_modified_date: "2021-02-01T00:00:00Z"
---

# Setting up the FiM AV System
{: .no_toc }

{: .warning }
This content is in the process of being updated, and may be a bit out of date or incomplete.

- TOC
{:toc}

### Setting up the Hardware

- Remove the front and back covers from the AV cart. 
- Check all the power cables are firmly connected to the UPS in the bottom of the cart. 
- Connect the UPS power cord to a source separate from the field system. 
- Connect a keyboard and mouse to the AV computer usb ports. 
- Note: the monitor power and hdmi cables should be already connected and coiled. Please do not disconnect and pack these. Simply connect the monitor to the power and HDMI cables. 
    - If someone mistakenly disconnected the cables... 
    - Connect a monitor to the monitor patch panel jack. 
    - Connect the monitor power to the AV cart power strip. 
- Connect the school internet to port 1 of the network switch. 
- Connect the FIRST field internet to port 2 of the network switch. 
- Connect the FIRST field network (10.0.100.0/5) to port 3 of the network switch. 
- Connect cameras to ports 5 and 6 of the network switch. 
- Connect the camera coax cables to their jacks. 
- Connect the projector coax to the HDMI to SDI converter output. 
- Power on the UPS. 
    - If it does not power, the battery cable has most likely disconnected. Simply remove the four Philips screws on the cover to access the Anderson connector. You may have to push it in gently with a flat blade screwdriver. 
- Power on the computer. 
- Log on to the computer. 
 
## Setting up the FiM AV Software  
 
### 1. Verify and note the IP addresses assigned 

- Run cmd 
- Use command ‘ipconfig’ 
- Note the IP addresses assigned to 
    - Vlan 10 Internet 
    - Vlan 20 Field 
    - Vlan 30 AV (will be 192.168.25.101-105) 
 
The internet IP address is the school/venue assigned IP. It is needed for live streaming, recorded match uploading,the Pit Display, the Queueing Display, remote support, etc.

The Field IP address is the FMS assigned IP. It is needed for Audience Display.

The AV IP address is needed for the sound mixer and camera control. 
 
### 2. Launch Audience Display (note FIRST updates may slightly change the operation) 

{: .note }
FIRST game-specific updates may slightly change the look or operation of Audience Display.

- Use the FIRST Audience Display shortcut located on the left middle of the Windows desktop 
- Ctrl-Shift-F12 accesses the Audience Display dialog box to set options. Options should be set as follows: 
    - Chroma Background Fuchsia 
    - 720p or 1080p 
    - Center On Screen
    - Award Display Type: "\[Alternate\] Web Display"
    - Click Save Changes or Cancel to exit the dialog box 
 
### 3. Launch vMix

You have two options. The easiest way is listed first 
- Option 1
    - Open the Events folder in the top left corner to the right of the vMix icon 
    - Find your event name and open that folder 
    - Double click on .vmix file to open it in vMix 
- Option 2: 
    - There is a desktop shortcut in the upper left corner and a taskbar shortcut on the bottom of the screen. 
    - Click the down triangle on the Open button at the top left 
    - Browse to the Events folder for your event and select the .vmix file 

This will open several inputs and input tabs: 

- Field Cam  
- PTZ Cam 
- Audience Display (Desktop capture of the application window) 
- Virtual – Game input (chroma key of Audience Display layered on top of a copy of Field Cam input) 
- Several Opening videos 
- Audio In 17+18 

Note the colored input tabs for Game (Red) and Opening (Green). Each input cog(little gear icon) for settings willbe colored for the tab it is assigned. This makes it easy to select the green Opening tab for the various videos needed for opening ceremonies, and later selecting the red Game tab to only see the camera and Audience Display. 
 
vMix is a video switching application. Basic use: 

- The windows second monitor is the projector. The top right window in vMix is the currently showing input 
- The Preview window is the top left.
- Selecting various inputs will put them in the Preview screen. 
- Select a transition button between the Preview and Live screens to change the input. 

vMix provides an extensive library of tutorial videos on YouTube for greater detail. 
 
Opening video input tips: 

- Click the Cog icon to edit properties 
- General (top selection) 
- Check the boxes  
- Automatically Play with Transition 
- Automatically Restart with Transition 
- Automatically Pause after Transition 
- The video will always start at the beginning no matter where it was left for testing 
 
### 4. Sponsor PowerPoint / Video 
- Launch Powerpoint and open your specific District file found in the FRC folder. There is a FRC folder shortcut on the desktop. Folders are organized by event week then name. 
- Verify or add any event specific sponsors to the slide show.
- Once complete, export the slide show to a .mp4 file 
    - File – Export – Create a Video 
    - HD 720p 
    - Create Video 
- Monitor the progress. This will take several minutes.  
- After complete, return to vMix 
- Add Input – Video 
- Select the video file you created 
- Close PowerPoint 

### 5. Verify Stream  
- Click the Stream button. It should turn red and stay red until stopped by clicking the button again. 
- The stream settings will be provided by FIRST. After week 1, the settings will be saved. 
- Notes about streaming 
    - The Audio input 17+18 sends the mixer output to Bus 1 into vMix assigned to Bus A 
    - Bus A is configured for both the Stream and Record functions. 
    - There is a sound diagram in the AV folder shortcut on the desktop
