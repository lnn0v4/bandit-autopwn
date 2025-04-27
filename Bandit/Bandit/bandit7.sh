#!/bin/bash 


fichero=$(find / -type f -name data.txt 2>/dev/null | tail -n 3 | head -n 1)

if [ -s $fichero ]; then
        echo $(sed -n '/millionth/p' $fichero | awk 'NF{print $NF}')

else
        echo "[!] Advertencia: El fichero data.txt no está disponible."
fi
