#!/bin/bash
a=$(ps -e -o '%p:%a' | grep -E ":/sbin" | awk '{print$1}')
echo "$a"
