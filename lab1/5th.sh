#!/bin/bash
input=0
echo "1: nano"
echo "2: vi"
echo "3: firefox"
echo "4: exit"
read input
case $input in 
1)
/bin/nano
;;
2)
/usr/bin/vi
;;
3)
/usr/bin/firefox
;;
4)
exit
;;
esac

