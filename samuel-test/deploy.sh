#!/bin/bash
tar -zxvf app.tgz
rm app.tgz
yarn install
kill $(ps aux | grep 'react-scripts' | awk '{print $2}'); syarn start &