#!/bin/bash
tar -zxvf app.tgz
rm app.tgz
pids=$(pidof node)
for pid in $pids; do
  kill $pid
done
# yarn install
# yarn start &