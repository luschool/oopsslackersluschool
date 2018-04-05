#!/bin/bash
# Week 12 tcp dump script by Lucas Merriott
# Made in ArchLinux so commands may differ

echo "Displaying all TCP sockets with port numbers"
echo
read -p "Press enter when ready."

ss -atn | less -P "Space to scroll. SHIFT+Q to close."
clear
echo

echo "Displaying all UDP Sockets"
echo
read -p "Press enter when ready."

ss -au | less -P "Space to scroll. SHIFT+Q to close."
clear
echo

echo "Dumping interface names with tcpdump -D"
echo
tcpdump -D
echo
echo "Running a tcpump to find all cleartext http get requests"
echo
echo "Remember to use CTRL + c to exit the dump"
echo
read -p "Press enter when ready."
echo
sudo tcpdump 'tcp[32:4] = 0x47455420'
echo
echo
echo "Script Complete"
