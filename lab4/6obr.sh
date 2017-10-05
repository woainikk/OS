#!/bin/bash
echo $$ > .pid
A=1
mode=1
term()
{
mode=0
}
trap term SIGTERM
while true; do
	case $mode in 
		"1")
		let A=$A+1
		echo "$A"
		;;
		"0")
		echo "Stopped by SIGTERM"
		exit
		;;
	esac
	sleep 1
done


