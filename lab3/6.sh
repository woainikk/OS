#!/bin/bash
echo "$(cat "stat.log" | sort -t = -k3 -n)" > statsort.log
myPpid=0
sumAvg=0
count=0
cat "statsort.log" | while read LINE
do
	myCurrentPpid="$(echo "$LINE" | cut -d : -f 2 | cut -d = -f 2 )"
	#echo "$myPpid + $myCurrentPpid"
	if [[ $myCurrentPpid -eq $myPpid ]]
		then
		echo "$LINE" >> "stat6.log"
 	fi
	curAvg="$(echo "$LINE" | cut -d : -f 3 | cut -d = -f 2 )"
	#sumAvg="$(awk -F, '{$curavg+$sumAvg}')"
	sumAvg=$(( $sumAvg + $curAvg ))
	let count=$count+1
	if [[ $myCurrentPpid -gt $myPpid ]]
		then
		avg=$(( $sumAvg/$count ))
	        echo "Average Sleeping Children of ParentID = $myPpid is $avg" >> "stat6.log"
		echo "$LINE" >> "stat6.log"
	fi	 
	myPpid="$(echo "$LINE" | cut -d : -f 2 | cut -d = -f 2 )"

done 

