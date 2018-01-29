#!/bin/bash
pids=$(pidof node)
for pid in $pids; do
  kill $pid
done