#!/usr/bin/env bash

project="20150513-phpsw"
rootDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $rootDir/../..

zip -9 -r \
    --exclude=*bin* \
    --exclude=*build* \
    --exclude=*node_modules* \
    --exclude=*package.json* \
    --exclude=*Gruntfile.js* \
    ${project}/build/ppi-${project}.zip \
    ${project}



