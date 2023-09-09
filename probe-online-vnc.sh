# Scan and report clients contain name "PC" that still active
# install `nmap` before use

#!/bin/sh
echo "enter ip set to scan:"
read vlan
sudo nmap -sP $vlan | grep pc
# read from stdout -> create list of IPs
sudo nping --tcp-connect 5900 --rate 4 $ip_set
