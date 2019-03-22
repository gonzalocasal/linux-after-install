#!/bin/bash 
current_out=$(pacmd list-sinks | grep '* index: ' | awk '{print $3}')

if [ $current_out -gt 0 ]
then
	notify-send AirPlay "Disconnected"
	pacmd unload-module module-raop-discover
else
	notify-send AirPlay "Connecting"
	pacmd load-module module-raop-discover
	sleep 5
	new_out=$(pacmd list-sinks | grep 'index: ' | sed 's/ //g' | sed 's/*//g' | sed 's/index://g' | tail -1 | awk '{print $1}')
	echo $new_out
	pacmd set-default-sink $new_out
	notify-send AirPlay "Connected"
fi
