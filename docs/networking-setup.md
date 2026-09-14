---
title: Networking Setup
---

# Networking Setup

{: .note }
You should not need to change the IP addresses or any network settings of any devices. If you believe an AV cart has been configured incorrectly, reach out in the {% include slack-av-help.md %} before making any modifications.

_FIRST_ in Michigan AV networks follow a predictable IP addressing scheme, where all addresses include the cart number to avoid conflicts during events where more than one cart is on the same LAN. For all addresses below, `xx` is the cart number (for carts 1-12).

| Device              | IP Address                    |
|------------------   | ----------------------------- |
| AV Cart             | 192.168.25.xx0                |
| Sony Camera         | 192.168.25.xx1                |
| PTZ Optics Camera   | 192.168.25.xx2                |
| Audio Mixer         | 192.168.25.xx3                |
| *Reserved*          | 192.168.25.xx4-192.168.25.xx8 |
| Network Switch      | 192.168.25.xx9                |
