#!/bin/bash 


fichero=$(find / -type f -name data.txt 2>/dev/null | tail -n 2 | head -n 1)
if [ -f $fichero ]; then
        sort $fichero | uniq -u
else
        echo "[!]fichero no encontrado"
        exit 1
fi
