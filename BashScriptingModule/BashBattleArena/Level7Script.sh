#!/bin/bash




DIRECTORY="Arena"

if [ ! -d "$DIRECTORY" ]; then #check if directory exists
    echo "Directory does not exist."
    exit 1
fi

find "$DIRECTORY" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{ print $5, $9 }'
#first finds files with.txt 
#lists file in human readable format 
#sorts by column 5 , size and outputs in human readable format 
# awk prints column 5 and 9 , size and file name