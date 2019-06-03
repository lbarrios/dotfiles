#!/bin/bash
if [ -z "$DOTFILES" ]; then
        echo "La variable DOTFILES no se encuentra declarada."
        exit
fi
FILE="~/.config/bat"
if [ -d "$FILE" ]; then
        if [ -f "${FILE}.original" ]; then
                echo "El archivo ${FILE}.original ya existe, no se puede seguir"
        else
                echo "El archivo $FILE ya existía, moviendo a ${FILE}.original"
                mv $FILE ${FILE}.original
                ln -s ${DOTFILES}/bat/ $FILE
        fi
else
        ln -s ${DOTFILES}/bat/ $FILE
fi
