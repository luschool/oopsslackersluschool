# Team Oops Slackers Week 2 Individual Documentation
### By Luschool

This is my documentation for my personal research and progress for week 2 of the group project.

**Important Links -**
* [Private GitHub Team](https://github.com/orgs/FOSSClass/teams/oops-slackers)
* [Week 1 Update](https://github.com/luschool/oopsslackerstemp/blob/master/OopsSlackersWeek1Individual.md)

## Table of contents
1. [Summary](#sum)
2. [TFTP Trial](#tftp)
3. [DHCP Trial](#dhcp)
4. [Goals Going Forward](#future)

<a name="sum"></a>

## Summary -  

This week I spent the majority of my time focusing on TFTP and DHCP. Due to this I feel like I don't understand the iPXE/netboot.xyz
side of things as much as I would like and plan to farmilarize myself with it more next week. 

I started off by configuring ssh and connecting to my pi through ssh on my arch linux install to make most of my changes. 

I successfully setup a simple tftp server that allowed files to be pulled from other computers. I have yet to get it working
exactly as I would like it to and will go more into detail below. 

I began researching and deploying a dhcp server when I came across dnsmasq. This seems like the perfect service for us to use
in our project and plan to do alot more research into it as well as try to deploy it. 


<a name="tftp"></a>

## TFTP Trial - 

**Links -**
* [tftpd-hpa Package(Server)](https://packages.debian.org/stretch/tftpd-hpa)
* [tftp-hpa Package(Client)](https://packages.debian.org/stretch/tftp-hpa)
* [RFC 1350 - TFTP Protocol](https://tools.ietf.org/html/rfc1350)

* [xinetd Package(Not being used)](https://packages.debian.org/stretch/xinetd)

Installed package with command -
`sudo apt-get install tftpd-hpa`

made a backup of /etc/default/tftpd-hpa before editing. 
Modifications- 
* Added my pis local ip `TFTP_ADDRESS="192.168.1.17:69"`

Created a newtest.txt file with the results of ls -la / in /svr/tftp

**Successfully** transferred the file from another LAN attached machine.
```
$ tftp 192.168.1.17

tftp> get newtest.txt
tftp> quit
```
File aquired from tftp contained the correct contents - 
```
total 87
drwxr-xr-x  22 root root  4096 Apr 10 13:58 .
drwxr-xr-x  22 root root  4096 Apr 10 13:58 ..
drwxr-xr-x   2 root root  4096 Apr 10 02:52 bin
drwxr-xr-x   3 root root  2560 Dec 31  1969 boot
-rw-r--r--   1 root root     4 Nov 15  2016 debian-binary
drwxr-xr-x  15 root root  3560 Apr 10 14:00 dev
drwxr-xr-x 111 root root  4096 Apr 10 13:57 etc
drwxr-xr-x   3 root root  4096 Apr 10  2017 home
drwxr-xr-x  18 root root  4096 Apr 10 02:49 lib
drwx------   2 root root 16384 Apr 10  2017 lost+found
drwxr-xr-x   3 root root  4096 Apr 10  2017 man
drwxr-xr-x   3 root root  4096 Apr 10  2017 media
drwxr-xr-x   2 root root  4096 Apr 10  2017 mnt
drwxr-xr-x   7 root root  4096 Apr 10  2017 opt
dr-xr-xr-x 176 root root     0 Dec 31  1969 proc
drwx------   4 root root  4096 Apr 10 04:14 root
drwxr-xr-x  22 root root   780 Apr 10 14:00 run
drwxr-xr-x   2 root root  4096 Apr 10 02:56 sbin
drwxr-xr-x   3 root root  4096 Apr 10 14:08 srv
dr-xr-xr-x  12 root root     0 Dec 31  1969 sys
drwxrwxrwt  13 root root  4096 Apr 10 14:08 tmp
drwxr-xr-x  11 root root  4096 Apr 10  2017 usr
drwxr-xr-x  11 root root  4096 Apr 10  2017 var
```

Exploring getting it to work with xinetd. Have had no luck getting it to work properly
yet though. For now I will just manually start and stop the service when I need it-
`sudo service tftpd-hpa start`
`sudo service tftpd-hpa stop`

Using the below commands we can see if the server is correctly open once the service
has been started -

`netstat -an|grep 69`
`netstat -a |grep tftp`

<a name="dhcp"></a>

## DHCP Trial -  

**Links -**
* [dnsmasq Package](https://packages.debian.org/stretch/dnsmasq)
* [isc-dhcp-server Package](https://packages.debian.org/stretch/isc-dhcp-server)
* [RFC 2131 - DHCP Protocol](https://tools.ietf.org/html/rfc2131)
* [isc-dhcp-server Info and Guide](http://my-music.mine.nu/images/rpi_raspbianwheezy_dhcp_server.pdf)
* [dnsmasq Documentation and Guide](https://www.raspberrypi.org/learning/networking-lessons/lesson-3/plan/)


I got part way through installing and configuring an isc-dhcp-server when I came across
someone mentioning **dnsmasq**. After some more research it seems to serve as both a 
DHCP server and a read only TFTP server which works perfectly for what we're planning to 
accomplish with network booting. Due to this new information I halted my progress with isc-dhcp-server
until I know more about dnsmasq and give it a try. 


<a name="future"></a>

### Goals Going Forward -  

I didn't accomplish as much as I would've liked this week, but I learned some useful things 
and discovered a service that should help us going forward. I hope to find an easy way to deploy
and configure dnsmasq in a localized enviornment so my router doesn't interfere. 

Fully understanding iPXE/netboot.xyz and how to chainload is my next priority. I have a good 
feeling that the next week will be our breakthrough. 

Organizing and populating our group repository and project board is another goal.

