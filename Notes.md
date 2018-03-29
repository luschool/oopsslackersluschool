# Team Oops Slackers

This is a summary of the notes compiled from class. It will provide an overview of things 
we should research and gather a simple understanding of during the next few days.

The goal for the project is to build a remote imaging service using Netboot along with iPXE.
This allows an orginization to target operating system installs to select machines remotely. 
Speeding up the deployment time by removing the need to be at the physical machine and imaging
multiple machines at the same time. 

## Communication Methods

Currently using Signal.

Discussing the option of IRC -

[IRC WIKI](https://en.wikipedia.org/wiki/Internet_Relay_Chat)

I currently have a channel setup on the Freenode.net server named ##oopsslackers
There are many IRC client options. Currently I'm using HexChat because it supports most operating systems
and is free to use. Check google for popular mobile clients. Webchat available through https://webchat.freenode.net/
If we go the route of IRC I will provide seperate documentation on the easiest way to connect 
to our server if you're having trouble. 

## GitHub Oganization and Project

[GitHub Organization Link](https://github.com/OopsSlackers)
[Personal Temporary Project Location](https://github.com/luschool/oopsslackerstemp/projects/1?add_cards_query=is%3Aopen)

I started a new organization and sent invites the github accounts I know. Missing a few so get in contact with me for an invite.
We may be able to just use the FOSSClass organization for a project and repository I just need to check the permissions to
make sure we can limit access to only our group. 

**GitHub profile links for known group members**

[Ali](https://github.com/caqlishire)
[Alex](https://github.com/rarar0)
[Lou](https://github.com/LouVang97)
[Lucas](https://github.com/luschool)
[Pavel](https://github.com/paveldanek)
[Tom](https://github.com/bigmantate)

If your name is not here its because I dont know your github profile name.

## Week 1 Research Focus

Before we assign everyone specific roles we should spend this first week researching the project as a whole. 
This will give us all a better understanding of the technology we plan to use for our goals. Once we have 
a better understanding people will hopefully have a section they're most interested in. 

**Topics to research -**

* [Netboot.xyz](HTTPS://www.Netboot.xyz) bootloader
* [iPXE](http://ipxe.org/) Preboot Execution Environment
* Chainloading Windows Deployment Services
* Bootstraping WinPE (Wiindows Preinstallation Environment)

**Protocols and ports to research -**

* HTTPS - 443
* TFTP - 69
* DHCP - 67(Server) 68(Client)
* Proxy DHCP - 4011? - 1194 - Wireguard


