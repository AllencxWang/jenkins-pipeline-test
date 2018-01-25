#!/bin/bash
tar -zxvf app.tgz
rm app.tgz
yarn install
pids=$(pidof node)
for pid in $pids; do
  kill $pid
done
yarn start &