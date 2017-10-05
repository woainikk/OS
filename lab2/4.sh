#!/bin/bash
cd /bin
a="$(cat $(ls -l| grep ^...x | awk '{print($NF)}') | grep -a ^#! | uniq -c | sort -nr | head -1 | cut -d ! -f 2)"
echo "$a"
