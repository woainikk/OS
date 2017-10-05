#!/bin/bash
a=$(ps -u margarita u | tail -n1 | awk '{printf("%d %s", $2., $9)}')
echo "$a"
