#!/bin/bash 


DIRECTORY="Arena"
searchTerm="Error"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

grep -l "$searchTerm" "$DIRECTORY"/*.log