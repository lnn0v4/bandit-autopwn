#!/bin/bash
function ctrl_c(){
        echo -e "\n\nSaliendo ...\n"
        exit 1
}

trap ctrl_c SIGINT

fichero=$(find / -type f -name data.txt 2>/dev/null | head -n 3 | tail -n 1 )

xxd -r $fichero > data

if [ -s data ]; then

        mv data data.gz
        gzip -dc data.gz > tmp_file
        while true;do
                new_fichero=$(file tmp_file | grep -o '".*"' | tr -d '"')
                extension=$(file tmp_file | grep -Eo 'bzip2|gzip|tar' | tr -d '"')
                if [ "$?" == "0" ]; then
                        if [ "$extension" == "bzip2" ];then
                               mv tmp_file data.bz2
                               bzip2 -dc data.bz2 > tmp_file

                        elif [ "$extension" == "gzip" ]; then
                                mv tmp_file data.gz
                                gzip -dc data.gz > tmp_file

                        elif [ "$extension" == "tar" ]; then
                                mv tmp_file data.tar
                                tar -xOf data.tar > tmp_file

                        else
                                awk 'NF{print $NF}' tmp_file
                                rm data* tmp*
                                exit 1;
                        fi
                else
                        exit 1;
                fi
        done
else
        echo "archivo vacio"    
fi
