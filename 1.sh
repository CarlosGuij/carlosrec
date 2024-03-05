#!/bin/bash
# Me devuelve la calificación (Suspendido, Aprobado o Sobresaliente) de una nota que le paso por parámetro

nota=$1

if [ $nota -lt  5 ] ; then 
echo "Nota Suspendida"; 
fi   
if [[ $nota -ge 5 && $nota -lt 10 ]] ; then 
echo "Nota Aprobada"; 
fi
if [[ $nota -ge 10 ]] ; then 
echo "Nota Sobresaliente"; 
fi 
 