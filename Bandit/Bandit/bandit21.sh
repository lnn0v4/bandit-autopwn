#!/bin/bash 

fichero=$(find / -type f -name cronjob_bandit22 2>/dev/null | xargs cat | tail -n 1 | awk '{print $7}')

if [ -s $fichero ];then
        new_fichero=$(cat $fichero | tail -n 1 | awk 'NF{print $NF}' )

        cat $new_fichero
else
        echo "No existe el fichero"
fi
