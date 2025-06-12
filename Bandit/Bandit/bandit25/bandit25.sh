#!/bin/bash
 
 
sshpass -p "iCi86ttT4KSNe1armKiwbQNmB3YJP3q4" ssh -p 2220 bandit25@bandit.labs.overthewire.org -o StrictHostKeyChecking=no  "cat /home/bandit25/*" > key_priv
chmod 600 key_priv
 
if [ -s key_priv ];then
    ssh -p 2220 -i key_priv bandit26@bandit.labs.overthewire.org -o StrictHostKeyChecking=no 2>/dev/null
else
    echo "No hay la key_priv"
fi
 

