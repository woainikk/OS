#!/bin/bash
man bash | tr -c '[:alnum:]' '[\n*]'| sort | uniq -c | sort -nr | awk '{print($NF)}' | grep -E '[A-Za-z]{4}' | head -3

exit
