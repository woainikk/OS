#!/bin/bash
a=$(ps -u margarita |  awk '{print$1}' | wc -l)
echo "$a"
b=$(ps -u margarita | awk '{printf("%d: %s\n", $1 , $4)}')
echo "$b" > pid1
