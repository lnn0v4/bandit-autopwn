#!/bin/bash

fichero=$(find / -type f -name bandit27-do 2>/dev/null)

if [ -s $fichero ];then
        "$fichero" cat /etc/bandit_pass/bandit27
else
        echo "No existe el fichero"
fi
