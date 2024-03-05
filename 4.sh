#!/bin/bash
#Le paso por parámetro un nombre y me devuelve si lo tiene todo aprobado o no

nombre=$1
while read -r linea; do

nota=$(echo "$linea" | awk '{print $3}')

if [ $nota -ge 5 ]; 
then
echo "El alumno $nombre esta aprobado"
else
echo "El alumno $nombre no esta aprobado"
fi
done < "notas.txt"
