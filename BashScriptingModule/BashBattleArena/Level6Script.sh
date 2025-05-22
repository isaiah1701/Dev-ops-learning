#!/bin/bash 

echo "Enter file name:"
read fileName

if [ "$fileName" != "" ]; then
    if [ -f "$fileName" ]; then
        wc -l "$fileName"
    else 
        echo "File does not exist"
    fi
else 
    echo "Null input"
fi


