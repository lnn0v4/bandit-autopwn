#!/bin/bash


bash -c "exec 3<> /dev/tcp/localhost/30000" 2>/dev/null

if [ $? -eq 0 ]; then
        echo "MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS" | nc localhost 30000 | tail -n 2
else
        echo "Puerto cerrado"
fi

3<&-
3>&-
