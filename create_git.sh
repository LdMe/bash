#!/bin/bash

if [ $# -lt 2 ]
then
    echo "Too few arguments"
    echo "arg1: account name /email"
    echo "arg2: repo name"
    exit 1
fi


curl -u "$1" https://api.github.com/user/repos -d "{\"name\":\"$2\"}"
