#!/bin/bash
cd /etc
a="$(cat $(ls -l | grep ^.r.-r..r | awk '{print($NF)}') | grep -a -oP '[A-Za-z0-9][A-Za-z0-9.]{1,}@[A-Za-z0-9\.]{1,}\.[A-Za-z]{1,}')"
cd ~/lab2
echo "$a" > email.list

