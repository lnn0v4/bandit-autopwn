#!/bin/bash

host="localhost"

for port in $(seq 31000 32000); do
    bash -c "exec 3<> /dev/tcp/$host/$port" 2>/dev/null && sleep 2
    if [ $? -eq 0 ]; then
        echo "kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx" | openssl s_client --connect $host:$port -quiet 2>/dev/null | sed -n '/BEGIN RSA PRIVATE KEY/,/END RSA PRIVATE KEY/p' > key_priv
        chmod 600 key_priv
        ssh -p 2220 -i key_priv bandit17@bandit.labs.overthewire.org -o StrictHostKeyChecking=no "cat /etc/bandit_pass/bandit17" 2>/dev/null
    fi
done

wait

3<&-
3>&-