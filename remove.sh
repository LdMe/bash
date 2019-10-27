#!/bin/bash
if [ "$#" -lt 1 ];
then
    files=$(find -type f \( -name "*~" -o -name "#* " \) )
    if [ -z "${files}" ];
    then
        echo "No temporary files found"
        exit 1
    fi
    num="$(echo $files | wc -w)"
    echo "$num files to be deleted: "
    echo $files
    echo "Are you sure to delete them (y/n)"
    read var
    if [ $var == 'y' ];
    then
        
        find -type f \( -name "*~" -o -name "#* " \) -delete
        echo "$num files removed"
    else
        echo "Operation cancelled"
        exit 0
    fi
    
    
    
elif [ "$#" -lt 2 ];
then
    files=$(find  -type f -name "*$1*" )
    if [ -z "${files}" ];
    then
        echo "$1: No files found"
        exit 1
    fi
    num="$(echo $files | wc -w)"
    echo "$num files to be deleted: "
    echo $files
    echo "Are you sure to delete them (y/n)"
    read var
    if [ $var == 'y' ];
    then
        find -type f -name "*$1*" -delete
        echo "$num files removed"
    else
        echo "Operation cancelled"
        exit 0
    fi
    
    
elif [ $1 == "not" ];
then
    
     
    
    files=$(find  -type f -not -name "*$2*" )
    
    if [ -z "${files}" ];
    then
        echo "not $2: No files found"
        exit 1
    fi
    num="$(echo $files | wc -w) "
    echo "$num files to be deleted: "
    echo $files
    echo "Are you sure to delete them (y/n)"
    read var
    if [ $var == 'y' ];
    then
        find -type f -not -name "*$2*" -delete
        echo "$num files removed"
    else
        echo "Operation cancelled"
        exit 0
    fi
    
fi
