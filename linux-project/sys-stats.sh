#!/bin/bash
#CPU Usage
#cpu_usage='top -b -n 1 | grep Cpu | awk '{print $8}'| cut -f 1 -d "."'
top -b -n 1 | grep Cpu | awk '{print $8}'| cut -f 1 -d "."
#echo "The CPU Idle is: $cpu_usage"
sleep 5
#Memory Usage
#mem_usage='free -g | grep "Mem" | awk '{print $4+$6}''
free -g | grep "Mem" | awk '{print $4+$6}'
#echo "We Have $mem_usage Gig of free Memory"
sleep 5
#Disk Usage
#disk_usage='df -P | grep /dev | grep -v -E '(tmp|boot)''
df -P | grep /dev | grep -v -E '(tmp|boot)'
#echo "The Disk Usage is $disk_usage %"
sleep 5
#Connected Users
w
sleep 5
#To Monitor Traffic
bwm-ng

