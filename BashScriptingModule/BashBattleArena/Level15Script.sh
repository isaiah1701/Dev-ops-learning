#!/bin/bash

echo "Choose an option:"
echo "1. Check disk space"
echo "2. Show system uptime"
echo "3. List users"
echo "4. Display Config file values"

read -rp "Enter your choice [1-4]: " choice



case $choice in 

1) 

DIRECTORY="Arena"
THRESHOLD=1

USAGE=$(du -sm "$DIRECTORY" | awk '{print $1}')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage for $DIRECTORY is at $USAGE%!"
else
    echo "Disk usage for $DIRECTORY is at $USAGE%. All is well."
fi

;;

2)

uptime 

;;

3) 



SOURCE_DIR="Arena"
BACKUP_DIR="Backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
echo "Created backup: $BACKUP_NAME"

cd "$BACKUP_DIR" || exit
ls -t | sed -e '1,3d' | while IFS= read -r file; do
    rm -f "$file"
done

;; 

4) 

CONFIG_FILE="settings.conf"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file does not exist."
    exit 1
fi

while IFS='=' read -r key value; do
    echo "Key: $key, Value: $value"
done < "$CONFIG_FILE"

;;

*) 

echo "invalid response"

;;

esac