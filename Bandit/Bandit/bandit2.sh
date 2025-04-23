#!/bin/bash 

file=$(find / -type f -name "spaces in this filename" 2>/dev/null)

if [ -s "$file" ]; then
        echo -e "$(cat "$file")"
else
        echo -e "No es un fichero"

fi
