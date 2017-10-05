#!/bin/bash
cat /var/log/Xorg.0.log | sed 's/II/Information:/' | sed 's/WW/Warning:/' > full.log
exit
