#!/bin/bash
while true; do
	read LINE
	echo $LINE >> "file7"
	case $LINE in
		"+")
			kill -USR1 $(cat .pid)
			;;

		"*")
			kill -USR2 $(cat .pid)	
			;;
	esac
done

