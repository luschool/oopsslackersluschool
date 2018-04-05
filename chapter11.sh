#!/bin/bash
# Week 12 script by Lucas Merriott
# Made in ArchLinux so commands may differ

echo "Small syntax differences in shell scripts can make a world of difference."
echo
echo "For example when using the echo command the difference between double, single, and no"
echo "quotations could seriously alter your output."
echo
echo "Next an echo $777 command will be run 3 consecutive times."
echo "In the order of double, single, and no quotes."
echo 

read -p "press enter when you're ready to continue." 

echo "$777" '$777' $777

echo
echo "As you can see only the single quotes displays the correct output that we wanted."
echo "That doesn't mean single quotes is the best option always. Single quotes just make"
echo "all characters between single quotes a single paramater."
echo
echo "This matters when you may want to run an echo that calls upon a variable."
echo
read -p "Press enter when you're ready to continue."
clear
echo "Enter your first name please."
read -p "First Name: " name unwanted
echo
echo "Now using the variable you just entered we'll demonstrate the differences of"
echo "calling variables in an echo with double, single, and no quotes."
echo 'Format used will be Hello $name . $name being the variable defined above.'
echo
echo "Hello $name" 'Hello $name' Hello name 
echo
echo "When calling variables only double quotes displays the correct output."
echo
echo "Using the include command we will import commands from another script file in"
echo "our current directory."
echo 
echo 
. chapter11extra.sh
