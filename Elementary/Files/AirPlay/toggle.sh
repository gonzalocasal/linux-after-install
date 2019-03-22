#!/bin/bash 
current_out=$(pacmd list-sinks | grep '* index: ' | awk '{print $3}')

if [ $current_out -gt 0 ]
then
	notify-send AirPlay "Disconnected"
	pacmd unload-module module-raop-discover
else

	omnipause pause
	
	pacmd load-module module-raop-discover
	
	new_out=$(pacmd list-sinks | grep 'index: ' | sed 's/ //g' | sed 's/*//g' | sed 's/index://g' | tail -1 | awk '{print $1}')

	pacmd set-default-sink $new_out

	current_outputs=$(pacmd list-sink-inputs | sed '/^[[:space:]]*$/d' | grep 'index: ' | tail -1 | awk '{print $2}')
	
	pacmd move-sink-input $current_outputs $new_out
	
	notify-send AirPlay "Connected"

	sleep 3

	pactl -- set-sink-volume $new_out 20%

	omnipause play
	
fi
