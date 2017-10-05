#!/bin/bash
cd /home/margarita
mkdir test && ( echo "catalog was created successfully" > ~/report ; cd ~/test ; date="$(date +"%c")" ; 
touch "$date" )
ping www.net_nikogo.ru || echo "host is not aviliable" >> ~/report

