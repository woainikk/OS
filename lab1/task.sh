#!/bin/bash
fin=""
count=1

if [[ $# -lt 10 ]]
then 
for var in "$@"
do
fin=${fin}$"parameter $count = $var "
let count=$count+1
done
echo "$fin"
else echo "error"
fi

