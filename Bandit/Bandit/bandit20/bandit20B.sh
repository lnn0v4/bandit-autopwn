#!/bin/bash

# Nota: Este segundo script debe ejecutarse desde nuestra terminal de Linux,
# después de haber corrido el primer script en OverTheWire.


sshpass -p "0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO" ssh -p 2220 bandit20@bandit.labs.overthewire.org -o StrictHostKeyChecking=no 2>/dev/null './suconnect 9001' > /dev/null 2>&1
