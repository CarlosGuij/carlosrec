#!/bin/bash
#Le paso dos parámetros (nombre y módulo) y me devuelve la calificación. Es obligatorio utilizar el script 1

nota=`./1.sh $1`

while read -r linea; do

nombre=$(echo "$linea" | awk '{print $1}')
modulo=$(echo "$linea" | awk '{print $2}')


if [  "$nombre" == "$1" ] && [ "$modulo" == "$2" ]; then
    echo "La nota de $nombre en el modulo $modulo es: $nota"    
fi
done < "notas.txt"  