#!/bin/bash

old_file=$(find / -type f -name "passwords.old" 2>/dev/null | head -n 1)
new_file=$(find / -type f -name "passwords.new" 2>/dev/null | head -n 1)

if [ -f $old_file ] && [ -f $new_file ]; then 
	diff $old_file $new_file | tail -n 1 | cut -d ' ' -f 2
else
	echo "UNo o ambos archivos no existen"
fi
