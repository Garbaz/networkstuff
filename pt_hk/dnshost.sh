#!/bin/bash

for n in $(cat sbdom.txt);do
#echo "------------------------------------------------"
host $n.$1|grep "has address"|cut -d" " -f4
done
