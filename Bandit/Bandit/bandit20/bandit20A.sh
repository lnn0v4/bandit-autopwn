#!/bin/bash

#Nota: Este es el primer script que debe ejecutarse, debemos iniciar sesión en OverTheWire. 
#Una vez dentro, es importante crear un directorio temporal utilizando mktemp -d y movernos a él. Luego, 
#desde ese directorio, podemos ejecutar el script de forma segura.

nc -l 9001 <<< "0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO"

