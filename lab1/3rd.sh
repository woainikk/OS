#!/bin/bash
string=""
sumstr=""
read string
while [[ $string != "q" ]]
do
sumstr=${sumstr}$string
read string
done
echo "$sumstr"


