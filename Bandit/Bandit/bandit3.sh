#!/bin/bash


dir=$(find / -type d -name inhere 2>/dev/null | head -n 1)

if [ -d $dir ]; then
        file=$(ls -la $dir/ | tail -n 1 | awk 'NF{print $NF}')
        if [ -f $dir/$file ]; then
                if [ -s $dir/$file ]; then
                        echo -e $(cat $dir/$file)
                else
                        echo -e "No tiene contenido"
                fi
        else
                echo "no existe"
        fi
else
        echo -e "no existe"

fi
