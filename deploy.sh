#!/bin/bash
tar czf app.tgz tests/* app.js index.js package.json yarn.lock
scp app.tgz ${TARGET_INSTANCE}:~
rm app.tgz