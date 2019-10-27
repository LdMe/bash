#!/bin/bash
if [ $# -lt 2 ];
then
    echo 'argument 1: username
argument 2: repo name'
    exit 1
fi
if [ $# -eq 2 ];
then
    
    git pull git+ssh://git@github.com/$1/$2
elif [ $# -eq 3 ];
then
     git pull git+ssh://git@github.com/$1/$2 $3/$2
else
    echo 'argument 1: username
argument 2: repo name
argument 3 (optional): local directory'
    exit 1
fi

    