#!/bin/bash 

fichero=$(find / -type f -name "-" 2>/dev/null | head -n 1)

if [ -f $fichero ]; then
        if [ -s $fichero ]; then
                echo -e "$(cat $fichero)"
        else
                echo -e "Esta vacio el fichero"
        fi
else
        echo "EL fichero no existe"
fi
