#!/bin/bash
file=$1

if [ -z "$file" ]
then
	echo "Usage: $0 [URL of the stream]"
	echo ""
	echo "Continuously plays a live stream with the VLC media player"
	echo "Useful for applications where a stream might be interrupted"
	echo ""
else
	echo "Playing continuous stream of $file"
	echo ""
	echo "You can cancel the script with 2xCtrl+C (fast)"
	while true
	do
		vlc --verbose 0 $file vlc://quit 2> /dev/null
		echo "Stream aborted. Trying again in one second..."
		sleep 1
	done
fi
