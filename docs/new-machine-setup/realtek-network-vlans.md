---
layout: page
title: Setup Realtek Vlans
parent: New Machine Setup
---

{% include staff-only.md %}

# Realtek Vlans
The AV Cart communicates with 3 separate networks through the motherboard's onboard network interface card (NIC).  This is done by utilizing
vlan trunking.  This requires a special setup on the AV Cart's side to accept these vlans.  

{: .note }
While rare, it is possible that the configuration on the AV Cart's side may be incorrect or broken.  
This document will cover how to check the configuration and how to fix it if necessary.

## Check VLANs

Open the start menu and search for **"View Network Connection"** and open it.
![View Network Connections](/assets/imgs/realtek-network-vlans/view-network-conns.png)

There should be 3 "Realtek Virtual Adapter" entries.  If there are less than 3, follow the below steps. The steps below will also work
on fresh installs of windows.
![Example Network Connections Panel](/assets/imgs/realtek-network-vlans/network-conns.png)


## Setup VLANs
1.  Ensure that the "Realtek Ethernet Diagnostic Utility" is installed by searching "realtek" in the start menu.  If it is not installed, you can
download it and install it [here](https://www.techspot.com/drivers/driver/file/information/18001/).  If offline (which you may be) the installer is also
located on the G drive under G:/My Drive/FiM/Cart Setup.

    {: .note }
    If you are in an absolute bind, you can plug your internet drop into the auxillary (PCIe) network card and use that to download the driver/access the internet.

2. Open the "Realtek Ethernet Diagnostic Utility", twirl open the "Realtek PCIe GBE Family Controller" and click on "VLAN".
![Realtek Ethernet Diagnostic Utility](/assets/imgs/realtek-network-vlans/realtek-diagnostic.png)

3. Delete any existing VLANs by selecting each entry and clicking the "Delete" button.

4. Click the "Add" button and enter `10` to add an entry for VLAN 10. Once typed, press enter.  It may take a second before you can add the next entry

5. Repeat step 4 for VLAN `20` and VLAN `30`.

## Setup Virtual NICs
1. Open the "Network Connections" panel by searching for it in the start menu, similar to above.

2. Right-Click -> "Rename" lowest numbered Virtual Adapter (Realtek Virtual Adapter) as "Vlan10-Internet", the second lowest (Realtek Virtual Adapter #2) 
as "Vlan20-Field", and the third lowest (Realtek Virtual Adapter #2) as "Vlan30-AV".

3. Right-Click -> "Properties" on "Vlan30-AV".

4. Click "Internet Protocol Version 4 (TCP/IPv4)" and then click the "Properties" button. 

5. Select "Use the following IP address" and enter `192.168.25.<cart-number>0` for the IP address.  Replace `<cart-number>` with the cart number.  For example, cart 1 would be `192.168.25.10`.  Use the subnet mask `255.255.255.0` and **leave the default gateway and DNS information blank**.

6. Select "Advanced", toggle off "Automatic Metric" and enter `105` for the metric.

    {: .note }
    The metric is used to determine which interface to use when multiple interfaces are available.  The lower the metric, the higher priority it has.  For our use case, 
    the internet interface gets the highest priority metric so that the majority of our traffic goes through it.

7. Click "OK" to close the the advanced window. Click "OK" to close the IPv4 properties window. Click "OK" to close the "Vlan30-AV" properties window.

8. Right click "Vlan20-Field" and select "Properties".  Repeat step 6-7 using an interface metric of `100`.

9. Right click "Vlan10-Internet" and select "Properties".  Repeat step 6-7 using an interface metric of `1`.

All set!

