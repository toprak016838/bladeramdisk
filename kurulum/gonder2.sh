#!/bin/bash

while :
do
count=$(ls /root/upload2 | wc -l)
if [ $count -ge 18 ] ; then
cd /root/upload2
rm -rf *
cd

plot=$(($plot + 18))
fi
sleep 300
done
