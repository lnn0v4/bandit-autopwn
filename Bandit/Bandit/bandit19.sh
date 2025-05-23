#!/bin/bash 

binario=$(find / -type f -name bandit20-do 2>/dev/null)

$binario ""cat /etc/bandit_pass/bandit20""
