#!/bin/bash
echo $$ > .pid
A=1
mode=0
usr1()
{
mode=1
}
usr2()
{
mode=2
}
trap usr1 USR1
trap usr2 USR2
while true; do
	case $mode in 
		"1")
		echo "Stopped by USR1"
		exit
		;;

		"2")
		echo "Stopped by USR2"
		exit
		;;
	esac
	sleep 1
done

