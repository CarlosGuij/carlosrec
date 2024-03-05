#!/bin/bash

while read -r linea; do

nota=$(echo "$linea" | awk '{print $3}')
if [ "$nota" -ge 5 ]; then    
    aprobados=$((aprobados+1))
else                            
    suspensos=$((suspensos+1))
fi
done < "notas.txt"

echo "El número de Aprobados son $aprobados"
echo "El número de Suspendidos son $suspensos"