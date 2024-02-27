#!/bin/bash

while :
do
count=$(ls /root/upload3 | wc -l)
if [ $count -ge 18 ] ; then
cd /root/upload3
rm -rf *
cd

plot=$(($plot + 18))
fi
sleep 300
done
