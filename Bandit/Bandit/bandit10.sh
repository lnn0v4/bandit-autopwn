#!/bin/bash 


fichero=$(find / -type f -name data.txt 2>/dev/null | head -n 1)


if [ -s $fichero ]; then

        palabras=($(base64 -d $fichero))
        cantidad=${#palabras[@]}
        for ((i=0;i<$cantidad;i++));do
               if [ $i -eq $((cantidad -1 )) ]; then
                        echo ${palabras[$i]}
               fi
        done

else
        echo "No existe el fichero o esta vacio"
fi
