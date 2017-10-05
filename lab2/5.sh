#!/bin/bash
cd /etc
a="$(cat passwd | cut -d : -f 1,3 | tr ':' ' ' | sort -k2 -n)"
echo "$a"
exit
