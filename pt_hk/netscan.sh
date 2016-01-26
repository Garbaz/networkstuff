#!/bin/bash

ip=( `hostname -I | sed 's/\./ /g'` )

unset ip[${#ip[@]}-1]
ipp=`echo "${ip[@]}" | sed 's/ /\./g'`
echo "First 3 bytes of IP = $ipp"

#nmap -sL $ip.1-254 | grep "(" | cut -d'(' -f2 | cut -d')' -f1

echo -e "\n"
nmap -sL $ipp.1-254 | grep "(" | cut -d' ' -f5-6 | grep -v "http://nmap.org" | grep -v "addresses ("
echo -e "\n"
