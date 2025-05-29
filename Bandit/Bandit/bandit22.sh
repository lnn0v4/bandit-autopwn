#!/bin/bash 

fichero=$(find / -type f -name cronjob_bandit23 2>/dev/null | xargs cat | tail -n 1 | awk '{print $7}')

if [ -s $fichero ];then
        new_fichero=$(grep 'md5sum' "$fichero" | sed 's/\$myname/bandit23/' | cut -d '$' -f 2 | tr -d '()')
        flag=$(bash -c "$new_fichero")
        cat "/tmp/$flag"

else
        echo "No existe fichero"
fi
