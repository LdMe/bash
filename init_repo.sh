#!/bin/bash

if [ $# -lt 2 ]
then
    echo "too few arguments"
    echo "arg1: account name /email"
    echo "repository name"
    exit 1
fi


git init

git remote add origin "git+ssh://git@github.com/$1/$2"
