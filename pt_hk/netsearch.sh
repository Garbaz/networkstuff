#!/bin/bash

#ip=$(sudo ifconfig | grep "inet addr:" | cut -d':' -f2 | cut -d' ' -f1 | grep -v "127.0.0.1" | cut -d'.' -f1-3 | cut -d' ' -f1)
ip=$(hostname -I | cut -d'.' -f1-3 | cut -d' ' -f1)
ip=($ip)
ip=${ip[0]}
ip=$ip"."$1

echo $ip" ="

./netscan.sh | grep "$ip" | cut -d' ' -f1
