#!/bin/bash
count=0
enter=0
read enter
while [[ $(($enter % 2)) -eq 1 ]]
do
let count=$count+1
read enter
done
echo "$count"
