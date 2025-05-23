#!/bin/bash

PASSWORD="x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO"

sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no -p 2220 bandit18@bandit.labs.overthewire.org 2>/dev/null "cat readme"

