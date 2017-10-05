#!/bin/bash
string1=$1
string2=$2
if [[ $string1 = $string2 ]]
then
echo "equal"
else
echo "not equal"
fi
