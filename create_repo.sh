#!/bin/bash

if [ $# -ne 2 ];
then
    echo "first argument: username 
second argument: repository name"
    exit 1
fi
blih -u $1 repository create $2

blih -u $1 repository setacl $2 ramassage-tek r

#git clone git@git.epitech.eu:/$1/$2
