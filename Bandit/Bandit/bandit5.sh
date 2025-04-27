#!/bin/bash

dir=$(find / -type d -name "inhere" 2>/dev/null | head -n 2 | tail -n 1)

if [ -d $dir ]; then
        fichero=$(find $dir/. -readable -size 1033c ! -executable 2>/dev/null)
        if [ -f $fichero ]; then
                if [ -s $fichero ]; then
                        echo $(cat $fichero)
                else
                        echo "Archivo vacio"
                fi
        else
                echo "No es un fichero" 
        fi
else
        echo "No es un directorio"
fi
