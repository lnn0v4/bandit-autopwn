#!/bin/bash 

dir=$(find / -type d -name inhere 2>/dev/null | tail -n 1)

if [ -d $dir ]; then

        file=$(find $dir -type f -name \*file\* 2>/dev/null)

        for fichero in $file;do
                tipo=$(file $fichero | cut -d ' ' -f 3)
                if [[ "$tipo" == *"text"* ]]; then
                        echo "$(cat $fichero)"
                fi
        done
else
        echo "No es un directorio"
fi
