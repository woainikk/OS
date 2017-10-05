#!/bin/bash
a=$1
b=$2
c=$3
if [[ $a -ge $b && $a -ge $c ]]
then
echo "$a"
fi
if [[ $b -ge $a && $b -ge $c ]]
then
echo "$b"
fi
if [[ $c -ge $b && $c -ge $a ]]
then
echo "$c"
fi
