#!/bin/bash

for pid in $(ps -e | awk '{print $1}' | grep -E '^[0-9]')
do
file="/proc/$pid/sched"
a="$(cat "$file" | grep -E '^se.avg.load_avg' | grep -a -oP '[0-9]{1,}')"

file2="/proc/$pid/status"
ppid="$(cat "$file2" | grep -E '^PPid' | grep -a -oP '[0-9]{1,}')"

echo "ProcessID=$pid : ParentProcessID=$ppid : Average_Sleeping_Time = $a" | grep -E 'ParentProcessID=[0-9]{1,}'>> stat.log

done


