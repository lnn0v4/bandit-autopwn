#!bin/bash 

fichero=$(find / -type f -name data.txt 2>/dev/null | head -n 2 | tail -n 1)

if [ -s $fichero ];then
        palabras=($(tr 'G-ZA-Fg-za-f' 'T-ZA-St-za-s' < $fichero))
        cantidad=${#palabras[@]}
        for((i=0;i<$cantidad;i++ ));do
                if [ $i -eq $((cantidad-1)) ];then
                        echo ${palabras[$i]}
                fi
        done
else
        echo "No existe el fichero o está vacío"
fi
