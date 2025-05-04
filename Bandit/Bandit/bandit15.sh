#!/bin/bash 

port="30001"
host="localhost"

bash -c "exec 3<> /dev/tcp/$host/$port" 2>/dev/null

if [ $? -eq 0 ]; then
        echo "8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo" | openssl s_client --connect $host:$port -quiet 2>/dev/null | head -n 2 | tail -n 1
else
        echo "[*]Puerto cerrado"
fi

3<&-
3>&-
