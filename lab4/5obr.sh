#!/bin/bash
mode=1
sum=1
(tail -n 0 -f file5 ) |
while true; do
read LINE
echo "$LINE"
if [[ $LINE = "+" ]]
	then 
	mode=1
	fi
if [[ $LINE = "*" ]]
	then 
	mode=0
	fi
if [[ $LINE =~ [0-9]+ ]]
	then 
	if [[ $mode -eq 1 ]]
		then 
		let sum=$sum+$LINE
		echo "$sum"
		fi
	if [[ $mode -eq 0 ]]
		then 
		let sum=$sum*$LINE
		echo "$sum"
		fi
	
	fi
done

