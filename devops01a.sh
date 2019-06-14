#!/bin/bash
echo "First Program"
# Part 2
# A. number of volumes, size of each volume, free space on each volume
echo
#echo "***************To get number of volumes, size of each volume, free space on each volume" 
df -a
echo
echo "***************In Readable format*****************"
echo
df -h
echo "--------------------------------------------------"

# B. number cpus/cores, information about the cpus/core
echo "*** Number cpus/cores, information about the cpus/core ***"
cat /proc/cpuinfo
echo

# C. amount of ram
echo "*** amount of ram ***"
echo
free -g
echo
echo "***************In Readable format*****************"
echo
free -m
echo