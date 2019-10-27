#!/bin/bash


PAT="$HOME/keygen_C/a.out"
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
   $PAT $1 $key | pbcopy
    exit 0
fi
 $PAT $1 $2 | pbcopy

exit 0
