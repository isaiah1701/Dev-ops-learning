#!/bin/bash

DIRECTORY="Arena"
LOG_FILE="change_log.txt"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

fswatch -r "$DIRECTORY" | while read event; do  #watches dir for changes
    if [ -e "$event" ]; then #if a change happens
        echo "$(date +'%Y-%m-%d %H:%M:%S') File modified/created: $event" >> "$LOG_FILE"
    else
        echo "$(date +'%Y-%m-%d %H:%M:%S') File deleted: $event" >> "$LOG_FILE"
    fi #echos time of events 
done

