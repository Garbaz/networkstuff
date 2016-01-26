#!/bin/bash

alive_ping()
{
	ping -c 1 $1 > /dev/null 2>&1
	[ $? -eq 0 ] && echo "$1"
}
#alive_ping 192.168.0.1
for ip in "192.168."{1..8}"."{1..254}
do
#echo $ip
alive_ping $ip & disown
done
sleep 8
