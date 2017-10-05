#!/bin/bash
sudo ./4.sh &pid1=$!
sudo ./4.sh &pid2=$!
sudo renice 6 $pid1
read c
sudo kill -9 $pid1
sudo kill -9 $pid2

