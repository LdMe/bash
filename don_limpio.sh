#!/bin/bash
if [ "$#" -lt 1 ];
then
    files=$(find \( -name "*~" -o -name "#* " \) )
    if [ -z $files ];
    then
        echo "No files found"
        exit 1
    fi
    echo "files to be deleted: "
    echo $files
    echo "Are you sure to delete them (y/n)"
    read var
    if [ $var == 'y' ];
    then
        
        find \( -name "*~" -o -name "#* " \) -delete
        echo "${#files[@]} files removed"
    else
        echo "Operation cancelled"
        exit 0
    fi
    
    
    
elif [ "$#" -lt 2 ];
then
    files=$(find  -name "$1" )
    if [ -z $files ];
    then
        echo "No files found"
        exit 1
    fi
    echo "files to be deleted: "
    echo $files
    echo "Are you sure to delete them (y/n)"
    read var
    if [ $var == 'y' ];
    then
        find  -name "$1" -delete
        echo "${#files[@]} files removed"
    else
        echo "Operation cancelled"
        exit 0
    fi
    
    
elif [ $1 == "not" ];
then
    
     
    
    files=$(find  -not -name "$2" )
    
    if [ -z $files ];
    then
        echo "No files found"
        exit 1
    fi
    echo "files to be deleted: "
    echo $files
    echo "Are you sure to delete them (y/n)"
    read var
    if [ $var == 'y' ];
    then
        find -not -name "$2" -delete
        echo "${#files[@]} files removed"
    else
        echo "Operation cancelled"
        exit 0
    fi
    
else
    files=$(find  -path "$1/*$2" )
    if [ -z $files ];
    then
        echo "No files found"
        exit 1
    fi
    echo "files to be deleted: "
    echo $files
    echo "Are you sure to delete them (y/n)"
    read var
    if [ $var == 'y' ];
    then
        find -not -path "$1/*$2" -delete
        echo "${#files[@]} files removed"
    else
        echo "Operation cancelled"
        exit 0
    fi
fi
