#!/usr/bin/env bash

reset

if [ $# -ge 1 ]; then
	i=$1
else
	i=60
fi
seconds=1
while (( i >= 1 )); do
    while (( seconds >= 1 )); do
        clear
        echo "La pantalla no se bloqueará por ${i} minutos..."
        echo "Quedan $(( i )) minutos, $(( --seconds )) segundos..."
        sleep 1
    done
    i=$(( i-1 ))
    seconds=60
done
