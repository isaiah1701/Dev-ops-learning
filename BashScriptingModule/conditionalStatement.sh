#!/bin/bash 


checkFile(){
       echo "enter file name"
       read fileName

       if [ -f "$fileName" ]; then 
         
         if [ -r "$fileName" ]; then 
         echo "file is readable"
         fi

         if [ -w "$fileName" ]; then 
         echo "file is writable"
         fi
         if [ -x "$fileName" ]; then 
         echo "file is executable"
         fi

    else 
    echo "file does not exist"
    fi

}

checkFile