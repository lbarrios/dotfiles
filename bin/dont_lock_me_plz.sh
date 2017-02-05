#!/usr/bin/env bash

reset

if [ $# -ge 1 ]; then
	i=$1
else
	i=60
fi
while (( i >= 1 )); do
    clear
    echo "La pantalla no se bloqueará por ${i} minutos..."
    echo "Quedan $(( i-- )) minutos..."
    sleep 60
done
