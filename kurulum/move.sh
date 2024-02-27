#!/bin/bash
index=0
while [ true ]
do
  for file in *
  do
    if [[ $file == *.plot ]]; then
	  index=$((($index % 4) + 1))
	  echo "$file,$index"
	  mv $file "/root/upload$index/$file"
      sleep 10
    fi
  done
  sleep 10
done