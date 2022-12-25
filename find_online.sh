# Scan and report clients contain name "PC" that still active
# install `nmap` before use

#!/bin/sh
echo "enter ip set to scan:"
read vlan
sudo nmap -sP $vlan | grep pc

# extract IP from stdout
sudo nping --tcp-connect 5900 --rate 4 $ip_set
