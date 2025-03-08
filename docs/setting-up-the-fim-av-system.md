---
layout: default
title: Setting up the FiM AV System
nav_order: 12
---

# Setting up the FiM AV System
{: .no_toc }

1. TOC
{:toc}

### Setting up the Hardware

- Remove the front and back covers from the AV cart.
- Check all the power cables are firmly connected to the UPS in the bottom of the cart.
- Connect the UPS power cord to a source separate from the field system.
- Connect a keyboard and mouse to the AV computer usb ports.
- Note: the monitor power and DisplayPort cables should be already connected and coiled. Please do not disconnect and pack these. Simply connect the monitor to the power and DisplayPort cables.
- If using the network box (UDM Pro)
  - Connect the network box to port 7 of the AV switch for both internet and field access.
- If an FTA decides to use an alternative setup
  - Connect the school internet to port 1 of the network switch.
  - Connect the FIRST field internet to port 2 of the network switch.
  - Connect the FIRST field network (10.0.100.0/5) to port 7 of the network switch.
- Connect cameras to ports 14 and 15 of the network switch.
- Connect the projector coax to the HDMI to SDI converter output.
- Power on the UPS.
    - If it does not power, the battery cable has most likely disconnected. Simply remove the four Philips screws on the cover to access the Anderson connector. You may have to push it in gently with a flat blade screwdriver. If you don't feel comfortable doing this on your own, reach out to the {% include slack-av-help.md %}.
- Power on the computer.
- Log on to the computer. If you don't know the password, ask an FTA.
- It may take a few minutes for all of the networking equipment to start up and connect. Let the machine sit for 5 minutes after logging in for the first time before moving on.
 
## Setting up the FiM AV Software
 
### 1. Check Network Configuration

*Note: FIM AV Assistant is currently in beta.*

When you log in to the computer, FIM AV Assistant should automatically pop up. Click next and let it perform hardware checks for the network. If any errors are shown, follow the steps below:

- Run cmd 
- Use command ‘ipconfig’ 
- Note the IP addresses assigned to 
    - Vlan 10 Internet 
    - Vlan 20 Field 
    - Vlan 30 AV (will be 192.168.25.10x) 
 
The internet IP address is the school/venue assigned IP. It is needed for live streaming, pulling in videos from the script, remote support, etc.

The Field IP address is the FMS assigned IP. It is needed for Audience Display.

The AV IP address is needed for the sound mixer and camera control. 
 
### 2. Launch Audience Display (note FIRST updates may slightly change the operation) 

{: .note }
FIRST game-specific updates may slightly change the look or operation of Audience Display.

- Use the FIRST Audience Display shortcut located on the Windows desktop 
- Ctrl-Shift-F12 accesses the Audience Display dialog box to set options. Options should be set as follows: 
    - Chroma Background Fuchsia 
    - 720p or 1080p 
    - Center On Screen
    - Real-Time Score Type: "\[Default\] Full Width"
    - Real-Time Score Vertical: "\[Flipped\] Top of Screen"
    - Real-Time Score Horizontal: *Whatever matches your camera's perspective*
    - Award Display Type: "\[Alternate\] Live Stream Bug"
    - Click Save Changes or Cancel to exit the dialog box 
 
### 3. Launch vMix

<!-- TODO: These instructions don't seem to apply yet -->
<!-- You have two options. The easiest way is listed first 
- Option 1
    - Open the Events folder in the top left corner to the right of the vMix icon 
    - Find your event name and open that folder 
    - Double click on .vmix file to open it in vMix 
- Option 2: 
    - There is a desktop shortcut in the upper left corner and a taskbar shortcut on the bottom of the screen. 
    - Click the down triangle on the Open button at the top left 
    - Browse to the Events folder for your event and select the .vmix file  -->

**Put a copy of the default configuration into your event folder.** It can be found in Google Drive at "FiM-AV > Cart-Setup > vMix > 2025-Reefscape-FiMVideo#.vmix". If you have difficulty finding this please reach out for help in the {% include slack-av-help.md %}. Double check that you're using the copy in your event folder, so you don't overwrite other events' configs.

This will open several inputs and input tabs: 

- Field Cam  
- PTZ Cam 
- Audience Display (Desktop capture of the application window) 
- Virtual – Game input (chroma key of Audience Display layered on top of a copy of Field Cam input) 
- Several Opening videos 
- Audio In 17+18 

**For rankings:** Your cart should have received a DM on slack with your pit display event key. Follow the instructions in that message to log in to the FiM Queueing app on the AV cart, and use the instructions on the "Manage Options" page to add the rankings display and stream graphics to vMix.

<!-- Note the colored input tabs for Game (Red) and Opening (Green). Each input cog(little gear icon) for settings willbe colored for the tab it is assigned. This makes it easy to select the green Opening tab for the various videos needed for opening ceremonies, and later selecting the red Game tab to only see the camera and Audience Display.  -->
 
vMix is a video switching application. Basic use: 

- The second monitor is the projector. The top right window in vMix is the input that's currently live. 
- The Preview window is the top left.
- Selecting various inputs will put them in the Preview screen.
- Select a transition button between the Preview and Live screens to change the input.
- Buttons are available on the StreamDeck to immediately cut to commonly used inputs

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

{: .note }
It's important that you use the sponsor slideshow for your specific event, not the generic FIRST Suppliers slideshow or a draft version.

- Open the sponsor slideshow in your event-specific folder. For instructions on finding this, see [Google Drive Layout](../google-drive). Folders are organized by event name.
- Update the slideshow to add your event name wherever called for, and remove any event-specific sponsors that are not for your event, then save the file.
<!-- - Export that slideshow to PowerPoint and open the PowerPoint file
- Add in the video from HQ. See [Google Drive Layout](../google-drive) for help finding its location.
- Once complete, export the slide show to a .mp4 file 
    - File – Export – Create a Video 
    - HD 1080p 
    - Create Video
- Monitor the progress. This will take several minutes.   -->
- After complete, drag the file from the folder in Explorer and drop it over vMix (it may take a few seconds to load in)
<!-- - Add Input – Video 
- Select the video file you created 
- Close PowerPoint  -->
- Turn on Loop for the newly created input, then right click on the part of the input that shows the slides and open the SlideShow Settings. Set the duration to 5000 milliseconds (5 seconds)

### 5. Verify Stream
- Load in your stream keys with FIMAV Assistant. Open FIMAV Assistant, and in the vMix menu click on "Set Stream Keys".
- In the stream settings window (the gear next to the stream icon) check that your quality includes "1080p" and "BusA".
- Click the Stream button. After a few seconds, it should turn red and stay red until stopped by clicking the button again. A notification should be sent to the #av-alerts channel in Slack saying that your channel went live on Twitch. If that alert is not sent, or it shows the wrong Twitch channel, it means something is wrong with your stream.
- Notes about streaming 
    - The Audio input 17+18 sends the mixer output from Bus 1 into vMix assigned to Bus A 
    - Bus A is configured for both the Stream and Record functions. 
    - There is a sound diagram in the AV folder shortcut on the desktop

## Next Steps

You're ready to run an event! Before you go home for the night, take a look at [Day 1 and 2](../day-1-and-2). It has a few quick steps you'll want to follow to set yourself up for a successful opening ceremony.
