---
layout: page
title: Networking Setup
---

# Networking Setup

{: .note }
You should not need to change the IP addresses or any network settings of any devices. If you believe an AV cart has been configured incorrectly, reach out in the {% include slack-av-help.md %} before making any modifications.

_FIRST_ in Michigan AV networks follow a predictable IP addressing scheme, where all addresses include the cart number to avoid conflicts during events where more than one cart is on the same LAN. For all addresses below, `x` is the cart number (for carts 1-9).

| Device            | IP Address     |
|-------------------| -------------- |
| AV Cart           | 192.168.25.1x  |
| Network Switch    | 192.168.25.10x |
| Sony Camera       | 192.168.25.x1  |
| PTZ Optics Camera | 192.168.25.x2  |
| Audio Mixer       | 192.168.25.x3  |

<!-- TODO: Confirm addressing of mixer against actual current configuration -->
