#!/bin/bash

fichero=$(find / -type f -name bandit27-do 2>/dev/null)

if [ -s $fichero ];then
        cat "/etc/bandit_pass/bandit26"
else
        echo "No existe el fichero"
fi
