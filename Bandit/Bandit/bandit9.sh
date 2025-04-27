#!/bin/bash 

fichero=$(find / -type f -name data.txt 2>/dev/null | tail -n 1)
if [ -s $fichero ]; then
        strings $fichero | sed -n '/===/p' | tail -n 1 | cut -d ' ' -f 2
else
        echo "No existe el fichero"
fi
