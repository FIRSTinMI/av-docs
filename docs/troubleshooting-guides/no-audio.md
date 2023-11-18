---
layout: default
title: No Stream Audio
parent: Troubleshooting Guides
---

# No Stream Audio

{: .note }
If you do not have any audio inside the event venue, this guide isn't for you.

## 1. Test using game sounds or a microphone

Some AV carts are configured to not send music from the DJ out to the live stream for copyright reasons. Microphones and game sounds should always go out to the live stream.

## 2. Check levels in X-Air

In X-Air, click on the Live Stream bus toward the right-hand side. Further right of that will be the main bus fader, and if sound is going through the bus, you should see a green bar jumping around next to that main fader. If you do not see that green bar, check that the appropriate channels are unmuted and turned up.

## 3. Check stream settings in vMix

Your live stream on vMix should be using "BusA". Open your stream settings and confirm that your quality includes BusA. If it does not, stop your stream, change the setting from Master to BusA, and restart it.

![The stream settings in vMix](../assets/image.png)

## 4. Check levels in vMix

In vMix, there should be a bunch of audio sliders in the bottom right of the main window. Look for one named similarly to "Audio In 17+8". First, ensure "A" is selected and "M" is not, also ensure the green bar near it is jumping around. When someone's talking, you're looking for the levels to be near the top but not in the red.

If you don't see any movement at all, try resetting the input. You can do this by finding the input in the main grid of videos, right click on the black rectangle, and click "Reset".

If the levels seem low, open the settings for that audio channel in vMix and increase the gain until the mic levels are near the top but not red.
