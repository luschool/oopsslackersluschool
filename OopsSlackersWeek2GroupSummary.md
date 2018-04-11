# Team Oops Slackers
This is a summary of our groups weekly progress. 


**Important Links -**
* [Private GitHub Team](https://github.com/orgs/FOSSClass/teams/oops-slackers)
* [Week 1 Summary](https://github.com/luschool/oopsslackersluschool/blob/master/OopsSlackersWeek1GroupSummary.md)

## Table of contents
1. [Project Goal](#goal)
2. [Group Members](#members)
3. [Tasks and Progress](#tasksprogress)
4. [Goals Moving Forward](#future)


<a name="summary"></a>

## Project Goals - 

Team Oops Slackers is working towards building a service that uses netbooting with iPXE for remote imaging solutions
and network operations. We will be working in a closed environment using raspberry pi to take on the role of 
a DHCP and TFTP server. Our end goal is remotely booting and deploying windows 7 to any computers in the classroom
not booting properly. 

<a name="members"></a>

## Group Memebers and Roles - 

*Currently missing a couple members profiles because we forgot to exchange contact info between everyone.*
*Everyone will be added during class this Wednesday.*

Use this table to access and track each persons summaries and progress. 

GitHub Profile | Roles | Weekly Summary
| --- | --- | ---
[Ali](https://github.com/caqlishire) | N/A | [Summary](https://github.com/caqlishire/Opps-Team)
[Alex](https://github.com/rarar0) | N/A | [Summary](https://github.com/rarar0)
[Bryce](https://github.com/Zetiaaa) | N/A | [Summary](https://github.com/Zetiaaa)
[Lou](https://github.com/LouVang97) | N/A | [Summary](https://github.com/LouVang97/Week12)
[Lucas](https://github.com/luschool) | N/A | [Summary](https://github.com/luschool/oopsslackersluschool/blob/master/OopsSlackersWeek2Individual.md)
[Pavel](https://github.com/paveldanek) | N/A | [Summary](https://github.com/paveldanek/Oops-Slackers/blob/master/Summary2.md)
[Tom](https://github.com/bigmantate) | N/A | [Summary](https://github.com/bigmantate/team_oops_project/blob/master/wk2.md)


<a name="tasksprogress"></a>

## Tasks and Progress - 

We started this week with the goal of deploying local TFTP servers on our raspberry pis and working more with netboot.xyz/iPXE.

A few members used their raspberry pis to deploy a TFTP server and it was a good learning experience. One of those deployments was
documented [here.](https://github.com/luschool/oopsslackersluschool/blob/master/OopsSlackersWeek2Individual.md#tftp)
During our trials we also tried testing xinetd as a service so that the tftp server wouldnt be running and accessible 
at all times. We took a step back from troubleshooting when we found a new service called dnsmasq which is a acouple of 
the services we need built into one. It offers both a DHCP server and a read only BOOTP/TFTP server for network booting 
which is just what we need. This will be one of our focuses going into next week. 

Pavel led the focus on digging deeping into netboot.xyz to try to figure out what and how we go about changing it to fit our needs exactly.
He has some good documentation located [here.](https://github.com/paveldanek/Oops-Slackers/blob/master/Summary2.md)


<a name="future"></a>

### Goals for the coming week -  

Our first goal on Wednesday will be to organize and populate our teams repository and project board to better direct our tasks. This
will also allow us to collaborate better while we're away from class. 

Netboot.xyz/iPXE is our main roadblock at the moment and will be our main focus going into next week. dnsmasq will be another area
we put time into. 



