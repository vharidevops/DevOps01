#!/bin/bash
volumes()
{ 
echo "***Volume Info in Readable format***"
echo
df -h
echo
}
cpu()
{ 
echo "*** Number cpus/cores, information about the cpus/core ***"
cat /proc/cpuinfo
echo
}
ram()
{ 
echo "***Ram Info in Readable format***"
free -m
echo
}
network()
{ 
echo "***Network Info in Readable format***"
ifconfig
echo " Mac Address:"
ifconfig | grep "HWaddr"
echo " IP Address:"
ifconfig | grep "inet addr"
}
all()
{
    volumes
    cpu
    ram
    network
}

echo "Enter any one of the values from below list:"
echo " volumes, cpu, ram, network, all"
read param
echo $param
if [ "$param" = 'volumes' ] ;then
    volumes
elif [ "$param" = 'cpu' ] ;then
    cpu
elif [ "$param" = 'ram' ] ;then
    ram
elif [ "$param" = 'network' ] ;then
    network
elif [ "$param" = 'all' ] ;then
    all
fi
echo "*** end of the file ***"


