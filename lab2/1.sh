#!/bin/bash
cd /var/log
a="$(cat $(ls -l | grep ^-r.-r | awk '{print $NF}') | grep ^upd)"
cd ~/lab2
echo "$a" > errors.log
exit 1
 



