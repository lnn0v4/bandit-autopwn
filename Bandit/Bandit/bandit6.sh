#!/bin/bash

# Modo de uso:
# ./mi_script.sh <usuario> <grupo> <tamaño>
# Ejemplo:
# ./mi_script.sh bandit7 bandit6 33c

if [ "$1" == "bandit7" ]; then
        if [ "$2" == "bandit6" ]; then
                if [ "$3" == "33c" ]; then
                        fichero=$(find / -user "$1" -group "$2" -size "$3" 2>/dev/null)
                        echo $(cat $fichero)
                else
                        echo "Error: debe ingresar el tamaño solicitado"
                fi
        else
                echo "Error: debe ingresar el grupo solicitado"
        fi
else
        echo "Error: debe ingresar el usuario solicitado"
fi
