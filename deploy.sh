#!/bin/bash
tar -zxvf app.tgz
rm app.tgz
cd app
yarn install
yarn start &