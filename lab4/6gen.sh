#!/bin/bash
while true; do
	read LINE
	echo $LINE >> "file6"
	case $LINE in
		TERM)
			kill -SIGTERM $(cat .pid)
			;;
	esac
done

