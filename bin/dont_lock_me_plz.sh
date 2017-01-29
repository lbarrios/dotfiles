#!/usr/bin/env bash

reset

i=60
while (( i >= 1 )); do
    clear
    echo "La pantalla no se bloqueará por una hora..."
    echo "Quedan $(( i-- )) minutos..."
    sleep 60
done
