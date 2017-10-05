#!/bin/bash
a="$(ps -u margarita u | awk '{printf("%d:%d\n",$2, ($5-$6)/4096)}'| tr ':' ' ' | sort -k2 -n -r | tr ' ' ':')"
echo "$a"

