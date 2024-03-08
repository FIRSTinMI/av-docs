---
layout: default
title: Stream Won't Start
parent: Troubleshooting Guides
---

# Stream Won't Start

{: .note }
You'll know if your stream to Twitch is successful if a messaage is sent in the #av-alerts Slack channel indicating you've started streaming.

## 1. Check Internet Connection

Try to go to <https://restream.io>, to make sure that you're actually connected to the internet.

## 2. Check Stream Settings

Compare all settings in the Stream dialog to the screenshot below. Pay special attention to the highlighted quality field, every word of it is important to be correct for match videos to post to YouTube automatically.

![Recommended Stream Settings](../assets/recommended-stream-settings.png)

## 2. Double-Check Your Stream Credentials

An incorrect stream key can look a lot like Restream being blocked. Double check it's been copy-pasted correctly, or ask for it to be resent as a DM to the cart.

## 3. Try RTMPS

By default, we stream over the RTMP protocol. If that port is blocked, we may be able to circumvent it by using the secure variant, RTMPS.

In the stream URL in vMix, change `rtmp://live.restream.io/live` to `rtmps://live.restream.io:1937/live` and try to start the stream again.

## 4. Try YouTube

Ask a member of @av-staff to create a private livestream on YouTube that you can use for testing. If this works, we can update The Blue Alliance to point to a YouTube stream instead of the official Twitch page.

## 5. Stream Directly to HQ

Request the credentials to directly stream to HQ's video splitter. This may not be blocked even if standard streaming platforms are.