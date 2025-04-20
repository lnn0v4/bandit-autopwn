#!/bin/bash 

dir=$(find / -type d -name "bandit0" 2>/dev/null)
fichero=$(find $dir -type f -name "readme" 2>/dev/null )


if [ -f $fichero ]; then
	echo "$(tail -n 2 $fichero | awk 'NF{print $NF}')"
else
	echo "Archivo no encontrado"
fi
