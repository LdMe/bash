#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]
       then
           PAT="$HOME/keygen_C/a.out"
    else
        PAT="$HOME/C/keygen/a.out"
    fi
    

if [ $# -lt 1 ]
then
    echo "too few arguments"
    echo "argument 1 public key, argument 2 (optional) private key"
    exit 1
fi
if [ $# -lt 2 ]
then
    echo "Private password:"
    read -s key
    if [[ "$OSTYPE" == "darwin"* ]]
       then
           $PAT $1 $key | pbcopy
    else
        $PAT $1 $key | xclip -selection c
    fi
    
        
    exit 0
fi
 $PAT $1 $2 | pbcopy

exit 0
