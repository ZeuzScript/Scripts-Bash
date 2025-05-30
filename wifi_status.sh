#!/bin/sh

IP=$( /usr/sbin/ifconfig wlp3s0 | grep "inet " | awk '{print $2}' )

if [ -z "$IP" ]; then
	echo "%{F#ff0000}󰖪  %{F#ff0000}Disconnected"
else
    echo "%{F#00ff00}  %{F#ffffff}$IP"
fi
