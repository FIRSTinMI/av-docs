---
title: Network Allowlist for School IT
---

# Network Allowlist for School IT

{: .note }
This page is meant to be shared with the venue or school IT department **before** your event. It lists the outbound connections the AV cart needs so streaming, remote support, and our web apps work on a restrictive/filtered network. The cart only ever makes **outbound** connections — no inbound ports need to be opened.

## How to use this page

Give the IT contact this page (or the URL <https://docs.fimav.us/docs/it-allowlist>) and ask them to allow the domains and ports below for the AV cart's IP/MAC address.

If they can only do one thing, the single most impactful change is: **allow all outbound TCP 443 (HTTPS), plus outbound TCP 1935 and 1937 (RTMP/RTMPS streaming)**. That covers the large majority of what we need. The tables below give the specific hostnames for stricter environments.

## Live streaming

The stream goes out over RTMP/RTMPS. If these ports are blocked the stream will not start (see [Stream Won't Start](../troubleshooting-guides/stream-wont-start)).

| Service | Domains | Ports |
|---------|---------|-------|
| Restream (primary ingest) | `restream.io`, `*.restream.io`, `live.restream.io` | TCP 1935 (RTMP), TCP 1937 (RTMPS), TCP 443 |
| YouTube Live | `youtube.com`, `*.youtube.com`, `studio.youtube.com`, `a.rtmp.youtube.com`, `b.rtmp.youtube.com`, `upload.youtube.com`, `*.googlevideo.com` | TCP 1935 (RTMP), TCP 443 (RTMPS + caption ingestion) |

## Remote support (staff access to the cart)

AV staff remotely control carts to fix streams and configuration. At least one of these must work or we lose the ability to help you during the event.

| Service | Domains | Ports |
|---------|---------|-------|
| TeamViewer | `*.teamviewer.com` | TCP 5938 (primary), fallback TCP 443 / 80, UDP 5938 |
| Tailscale | `controlplane.tailscale.com`, `login.tailscale.com`, `*.tailscale.com`, `derp*.tailscale.com`, `log.tailscale.io` | TCP 443, UDP 41641 (direct), UDP 3478 (STUN) |

## FiM AV web apps and services

| Service | Domains | Ports |
|---------|---------|-------|
| FiM AV Docs (this site) | `docs.fimav.us` | TCP 443 |
| FiM Queueing / stream graphics / Audience Display | `q.fimav.us`, `*.fimav.us` | TCP 443 |
| First in Michigan | `firstinmichigan.us`, `firstinmichigan.org` | TCP 443 |

## Google (Drive, accounts, captions)

The cart signs into a Google Workspace account (`fimvideo<#>@firstinmichigan.org`) and syncs event assets over Google Drive for Desktop. The recommended live-captions engine ("Google V2") also uses Google's speech API.

| Purpose | Domains | Ports |
|---------|---------|-------|
| Google sign-in | `accounts.google.com`, `*.google.com` | TCP 443 |
| Google Drive for Desktop | `drive.google.com`, `drive.usercontent.google.com`, `*.googleapis.com`, `*.googleusercontent.com` | TCP 443 |
| Google Docs (some resources) | `docs.google.com` | TCP 443 |
| Captions transcription (Google V2) | `*.googleapis.com`, `speech.googleapis.com` | TCP 443 |

## Microsoft / OneDrive

| Purpose | Domains | Ports |
|---------|---------|-------|
| OneDrive file sync | `onedrive.live.com`, `*.onedrive.com`, `*.sharepoint.com`, `login.microsoftonline.com`, `*.live.com` | TCP 443 |

## Communications

| Service | Domains | Ports |
|---------|---------|-------|
| Slack (`first-in-michigan` + `frc-support` workspaces) | `slack.com`, `*.slack.com`, `first-in-michigan.slack.com`, `*.slack-edge.com`, `*.slack-msgs.com`, `wss-*.slack.com` | TCP 443 (incl. WebSocket) |

## FIRST / scoring

| Service | Domains | Ports |
|---------|---------|-------|
| _FIRST_ Inspires | `firstinspires.org`, `www.firstinspires.org`, `*.firstinspires.org` | TCP 443 |
| The Blue Alliance (stream/scoring links) | `thebluealliance.com`, `www.thebluealliance.com` | TCP 443 |
| FTC Live scoring | `github.com` (scorekeeper updates), `ftc-api.firstinspires.org`, `*.firstinspires.org` | TCP 443 |
| FRC FMS cloud sync | `*.firstinspires.org` | TCP 443 |

## Port summary

For IT teams that filter by port rather than hostname:

| Port | Protocol | Used for |
|------|----------|----------|
| 443 | TCP | HTTPS — nearly everything (web apps, Google, Slack, RTMPS, remote support fallback) |
| 1935 | TCP | RTMP streaming ingest (Restream / YouTube) |
| 1937 | TCP | RTMPS streaming ingest (Restream secure variant) |
| 80 | TCP | HTTP (some updates / TeamViewer fallback) |
| 5938 | TCP/UDP | TeamViewer remote support |
| 41641 | UDP | Tailscale direct connections |
| 3478 | UDP | STUN (Tailscale NAT traversal) |
