#!/bin/bash
echo "Basladi"
while [ true ]
do
  for file in *
  do
    if [[ $file == *.plot ]]; then
      index="$((1 + $RANDOM % 1000))"
      counter="$((1 + $RANDOM % 574))"
      acc="$index.json"
      rclone move $file mnftc$counter: --ignore-existing --progress --min-size 101G --drive-chunk-size 1024M --drive-upload-cutoff 1000T --max-transfer=749G --drive-stop-on-upload-limit --fast-list --drive-server-side-across-configs -vv --checkers 2 --tpslimit 2 --transfers 2 --no-traverse --include "/*.plot" --drive-service-account-file /root/.config/rclone/accounts/"$acc" -P
      sleep 5
    fi
  done
  sleep 5
done
