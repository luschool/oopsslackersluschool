# Team Oops Slackers Group Progress
This is a summary of our groups weekly progress. 


**Important Links -**
* [Private GitHub Team](https://github.com/orgs/FOSSClass/teams/oops-slackers)
* [Last Weeks Class Notes](https://github.com/luschool/oopsslackerstemp/blob/master/Notes.md)

## Table of contents
1. [Summary](#summary)
2. [Group Members](#members)
3. [Communication](#comm)
4. [Tasks and Progress](#tasksprogress)
5. [Protocols](#protocols)
6. [Goals Moving Forward](#future)


<a name="summary"></a>

## Summary - 

Team Oops is working towards building a service that uses netbooting with iPXE for remote imaging solutions
and network operations. We will be working in a closed environment using raspberry pi to take on the role of 
a server. Our focus is deploying Windows 7.

Rather than try to compile all the bits of research from different corners of the project into one summary I figured it would be best
to have each summary linked below next to the respective member. 

<a name="members"></a>

## Group Memebers and Roles - 

*Currently missing a couple members profiles because I forgot to grab contact info from a few people.*
*Everyone will be added during class this Wednesday.*

GitHub Profile | Roles | Weekly Summary
| --- | --- | ---
[Ali](https://github.com/caqlishire) | N/A | [Summary](https://github.com/caqlishire/Opps-Team)
[Alex](https://github.com/rarar0) | N/A | 
[Bryce](https://github.com/Zetiaaa) | N/A |
[Lou](https://github.com/LouVang97) | N/A | [Summary](https://github.com/LouVang97/Week12)
[Lucas](https://github.com/luschool) | N/A | [Summary](https://github.com/luschool/oopsslackerstemp)
[Pavel](https://github.com/paveldanek) | N/A | [Summary](https://github.com/paveldanek/Oops-Slackers)
[Tom](https://github.com/bigmantate) | N/A | [Summary](https://github.com/bigmantate/team_oops_project)

<a name="comm"></a>

## Communication - 

We make use of Signal for most of our communications. 

[Signal](https://signal.org/download/)

There is also a Signal Desktop app but it seems it completly remove the protection that Signal offers by storing your conversations
in a plain text database on your local machine. 

<a name="tasksprogress"></a>

## Tasks and Progress - 

**Netboot.xyz -**
* [Netboot.xyz](https://netboot.xyz/)
* [Github](https://github.com/antonym/netboot.xyz)
* [Boot options documentation](http://netbootxyz.readthedocs.io/en/latest/boot-ipxe/)
* [Netbooting fundamentals and getting started](http://networkboot.org/fundamentals/)
* [Basic Netbooting Overview](http://www.opsschool.org/en/latest/netbooting.html)

**iPXE -** 
* [iPXE](http://ipxe.org/start)
* [Chainloading iPXE](http://ipxe.org/howto/chainloading)
* [iPXE Wiki](https://en.wikipedia.org/wiki/IPXE)

**Windows Deployment Services -**
* [WDS Wiki](https://en.wikipedia.org/wiki/Windows_Deployment_Services)
* [MSDN](https://msdn.microsoft.com/en-us/library/cc265612.aspx)
* [iPXE Chainloading WDS Info](http://ipxe.org/appnote/chainload_wds)
* [MS DHCP iPXE Chainloading](http://ipxe.org/howto/msdhcp#pxe_chainloading)

**Windows Presinstallation Environment -**
* [WinPE Wiki](https://en.wikipedia.org/wiki/Windows_Preinstallation_Environment)
* [iPXE WinPE Documentation](http://ipxe.org/howto/winpe)
* [iPXE wimboot Documentation](http://ipxe.org/wimboot)
* [Microsoft Documentation](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-intro)

Due to our project changing we used this week to focus fully on research. Before we volunteered for specific roles we agreed
it would be best if we all focused our efforts on researching each section of the project briefly to get a grasp of how it all works.
This will allow us to better decide where we think each of us would fit best. We intend to have rough roles assigned during class
on Wednesday the 4th. 

<a name="protocols"></a>

## Protocols - 

Protocol | Package Name | Port(s) | Package Link | Documentation
| --- | --- | --- | --- | ---
TFTP server | tftpd-hpa | Port 69 | [Package](https://packages.debian.org/stretch/tftpd-hpa) | [Raspberry Pi Guide](https://dynamicparallax.wordpress.com/2015/08/20/how-to-setup-raspberry-pi-as-a-tftp-server/)
DHCP server | isc-dhcp-server | Port 6768? 4011? 1194? | [Package](https://packages.debian.org/stretch/isc-dhcp-server) | [Documentation](https://www.isc.org/dhcp-manual-pages/)
NFS File Server | nfs-kernel-server | Port 2049 | [Package](https://packages.debian.org/stretch/nfs-kernel-server) |
SMB File Server | samba | TCP 139/445 UDP 137/138 | [Package](https://packages.debian.org/stretch/samba) | [Documentation](https://www.raspberrypi.org/magpi/samba-file-server/)

Web Server Useful? - Research needed for http boot utilization with wimboot - http://ipxe.org/howto/winpe

<a name="future"></a>

### Goals for the coming week -  

* Setup a TFTP server on a Raspberry Pi to host iPXE files.
* Setup a DHCP server on the same Raspberry Pi.
* Build a binary version of iPXE as an ISO or download a prebuilt binary and get farmiliar with how it operates.
* Research if a file server is required? What advantages does it offer?(Security?)
* Assign roles and areas of focus for members.



