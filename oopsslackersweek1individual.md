# Team Oops Slackers Week 1 Individual Documentation
### By Lucas Merriott

This is my documentation for my personal research and progress for week 1 of the group project.

**Important Links -**
* [GitHub Organization Link](https://github.com/OopsSlackers)
* [Group Project Location](https://github.com/orgs/OopsSlackers/projects/1)
* [Personal Temporary Project Location](https://github.com/luschool/oopsslackerstemp/projects/1?add_cards_query=is%3Aopen)
* [Last Weeks Class Notes](https://github.com/luschool/oopsslackerstemp/blob/master/Notes.md)

## Table of contents
1. [Weekly Goals](#goals)
2. [Research](#research)
   1. [Netboot.xyz](#netbootxyz)
   1. [iPXE](#ipxe)
   1. [Windows Deployment Services](#wds)
   1. [Windows Preinstallation Environment](#winpe)
   1. [Raspberry Pi Protocols and Guides](#raspbpi)
3. [Goals Going Forward](#future)

<a name="goals"></a>

## Weekly Goals - 

These are the goals I set for myself for the week and hope to tackle them all with the limited time I have.

      1. Setup a github organization for communication and collaboration. (Complete)
      2. Using that organization I will start a project board for clear goals to be displayed and tracked each week. (Almost Complete)
      3. Communicate with each member if possible and agree on a method of group communication outside of github. (Complete)
      4. Briefly research each major part of the project and decide where I would prefer to focus if possible. (Complete) 
      5. Communicate with each member so we can discuss and assign group roles if possible before our next meeting. (In The Process) 
      6. Layout a roadmap of the very first steps for getting started if time allows. (Complete)

<a name="research"></a>

## Research - 

Below is a summary of my research results. My plan going into this was to try to get a good grasp of the basics of each 
important part of the operation. Once each of us have a good grasp of each part we should have an easier time deciding
what roles we would prefer to take on and where we think we could be most useful. 

<a name="netbootxyz"></a>

### Netboot.xyz -  

Netboot.xyz is a bootloader tool to boot into a variety of Operating system installers or utilities over the network from 
a single menu system from within the BIOS. The bootloader is extremely light weight in size and flexible. It allows customization 
of things such as the menu. Netboot.xyz uses and relies on the tool iPXE which will be researched in the next section. 

The bootloader calls to a server that hosts the iPXE source files. Those sources files will contain and menus and logic for
the specified installer or utilities operation. Certain operating system installers will require additional resources
and technologies like WDS/WinPE for installing Windows environments. Netboot.xyz will also associate and retrieve the images 
that are stored in the remote project directory as well as using trust mirrors(Optional).

Links - 
* [Netboot.xyz](https://netboot.xyz/)
* [Github](https://github.com/antonym/netboot.xyz)
* [Boot options documentation](http://netbootxyz.readthedocs.io/en/latest/boot-ipxe/)
* [Netbooting fundamentals and getting started](http://networkboot.org/fundamentals/)
* [Basic Netbooting Overview](http://www.opsschool.org/en/latest/netbooting.html)

<a name="ipxe"></a>

### iPXE -  

iPXE is a free and open source implementation of the Preboot eXecution Environment(PXE) Client firmware and bootloader.
iPXE is the firmware itself that will facilitate the network boot portion of the operation. iPXE can either replace the 
existing PXE ROM on your network card, or chainloads into iPXE to obtain the features of iPXE without reflashing. 
iPXE offers additional features over standard PXE such as netbooting through HTTP.

Links -
* [iPXE](http://ipxe.org/start)
* [Chainloading iPXE](http://ipxe.org/howto/chainloading)
* [iPXE Wiki](https://en.wikipedia.org/wiki/IPXE)

<a name="wds"></a>

### Windows Deployment Services -  

While the above technology can be used for a variety of useful reasons, our major focus is remotely 
booting a system and deploying a clean Windows 7 operating system install. To accomplish this 
we will have to utilize Windows Deployment Services(WDS) and Windows Preinstallation Environment(WinPE).

Windows Deployment Services is a server technology made and provided by Microsoft. In basic terms it provides the 
resources and functionality to allow you to install and setup Windows operating systems from a remote network 
location as oppose to physically visiting each computer individually. It uses PXE, DHCP, and TFTP to bootstrap 
Windows Preinstallation Environment(WinPE) which will be researched in the next section.

WDS will be chainloaded from iPXE which provides great functionality and options. 

Links -
* [WDS Wiki](https://en.wikipedia.org/wiki/Windows_Deployment_Services)
* [MSDN](https://msdn.microsoft.com/en-us/library/cc265612.aspx)
* [iPXE Chainloading WDS Info](http://ipxe.org/appnote/chainload_wds)
* [MS DHCP iPXE Chainloading](http://ipxe.org/howto/msdhcp#pxe_chainloading)

<a name="winpe"></a>

### Windows Presinstallation Environment - 

Windows Preinstallation Environment is a lightweight version of Windows used to deploy and repair Windows machines. It's available 
inside the collection of tools Windows Assessment and Deployment Kit(Windows ADK). It is intended to be used as a thin client or
an embedded operating system. You can also bundle files, folders, apps, and more into the image file, which allows you to preconfigure
the machines you intend to deploy with important software and files. 

With the help of iPXE and wimboot you're able to boot into Windows PE on a remote system through HTTP. Allowing you to install 
a network hosted image file to the machine you connected to. HTTP has the added benefit of much faster speeds than the TFTP methods. 

Links - 
* [WinPE Wiki](https://en.wikipedia.org/wiki/Windows_Preinstallation_Environment)
* [iPXE WinPE Documentation](http://ipxe.org/howto/winpe)
* [iPXE wimboot Documentation](http://ipxe.org/wimboot)
* [Microsoft Documentation](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-intro)

<a name="raspbpi"></a>

### Raspberry Pi Protocols and Guides -  

I'm finding a decent amount of conflicting information about iPXE and Raspberry Pi. I think they're saying its not possible or easy
to netboot the raspberry pi itself as oppose to using the Raspberry Pi as the server to host the files to netboot another system.
I read its best to use Network File System(NFS) for netbooting to deploy Linux.
The same article said Common Internet File System(CIFS) aka Server Message Block(SMB) was best for netbooting to deploy Windows installs.

TFTP server - tftpd-hpa - Port 69 - https://packages.debian.org/stretch/tftpd-hpa
DHCP server - isc-dhcp-server - Port 6768? 4011? 1194? - https://packages.debian.org/stretch/isc-dhcp-server
https://www.isc.org/dhcp-manual-pages/ - http://www.noveldevices.co.uk/rp-dhcp-server
NFS File Server - nfs-kernel-server nfs-common - Port 2049 - https://packages.debian.org/stretch/nfs-kernel-server - https://packages.debian.org/stretch/nfs-common
SMB File Server - samba - TCP ports 139/445 - UDP ports 137/138 - https://packages.debian.org/stretch/samba - https://www.raspberrypi.org/magpi/samba-file-server/
Web Server Useful? - Research needed for http boot utilization with wimboot - http://ipxe.org/howto/winpe

<a name="future"></a>

### Goals Going Forward -  

**DISCLAIMER** This is a basic outline of what I believe the next steps are. Not going into full detail since its 
just to show broad goals for the near future. I'm using question marks to note my uncertainty because there's a 
high chance parts are incorrect. This is more of a way for me to visualize what all is required to help me focus 
my research and find answers to all the questions I have. 

* Setup a TFTP server on a Raspberry Pi to host iPXE files.
* Setup a DHCP server on the same Raspberry Pi.
* Is a file server required? What advantages does it offer?(Security?)
* Build a binary version of iPXE as an ISO or download a prebuilt binary and place a copy on the TFTP server.
* Follow the chainloading iPXE procedures here - [Chainloading iPXE](http://ipxe.org/howto/chainloading)
* Stopping here to focus our efforts if possible. 



