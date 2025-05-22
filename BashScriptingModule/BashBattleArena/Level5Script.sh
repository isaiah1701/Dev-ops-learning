#!/bin/bash

#makes battle field directory and its contents 

mkdir Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt


#checks if knight.txt exists and moves to archive
if [ -f "Battlefield/knight.txt" ]; then
    mkdir -p Archive
    mv Battlefield/knight.txt Archive/
    echo "knight.txt has been moved to Archive."
else
    echo "knight.txt not found."
fi
#checks contents of newly made folders 
echo "Contents of Battlefield:"
ls Battlefield

echo "Contents of Archive:"
ls Archive