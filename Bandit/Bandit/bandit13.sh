#!/bin/bash

fichero=$(find / -type f -name "*.private" 2>/dev/null | head -n 1)

if [ -s "$fichero" ]; then
    ssh -p 2220 bandit14@bandit.labs.overthewire.org -i "$fichero" -o StrictHostKeyChecking=no "cat /etc/bandit_pass/bandit14" 2>/dev/null
else
    echo "No se establecio la conexion"
fi
